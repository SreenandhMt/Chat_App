import 'dart:developer';
import 'dart:io';

import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/services/chat_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../core/exceptions.dart';
import '../../home/models/chat_model.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseStorage storage = FirebaseStorage.instance;

class GroupService {
  static final box = Hive.box("chatsCount");
  static Future<Map<String, UserModels>> getAllUsers(
      List<String> participants) async {
    try {
      Map<String, UserModels> allMembers = {};
      for (var user in participants) {
        final userModel =
            await firestore.collection("users").doc(user).get().then(
                  (value) => UserModels.fromJson(value.data()!),
                );
        allMembers.addEntries({userModel.uid: userModel}.entries);
      }
      return allMembers;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>>? getAllChats(
      ChatModel chatModel) {
    try {
      int? date;
      for (var map in chatModel.joinedDate ?? []) {
        if (map[auth.currentUser!.uid] != null) {
          date = map[auth.currentUser!.uid];
          break;
        }
      }
      if (date != null) {
        return firestore
            .collection("chats")
            .doc(chatModel.chatId)
            .collection("messages")
            .where("timestamp", isGreaterThan: date)
            .orderBy("timestamp", descending: true)
            .snapshots();
      }
      return firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .orderBy("timestamp", descending: true)
          .snapshots();
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  //! kicking, removing, and deleting

  static Future<void> deleteChatForMe(
      ChatModel chatModel, String messageId) async {
    try {
      await firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({
        "hidechat": FieldValue.arrayUnion([auth.currentUser!.uid])
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void deleteGroup(ChatModel chatModel) async {
    try {
      if (chatModel.createdBy != auth.currentUser!.uid) return;
      await firestore.collection("chats").doc(chatModel.chatId).delete();
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void exitGroup(ChatModel chatModel) async {
    try {
      final participants = List<String>.from(chatModel.participants);
      participants.remove(auth.currentUser!.uid);
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "participants": participants,
        "leaved": FieldValue.arrayUnion([auth.currentUser!.uid]),
      });
      ChatServices.sendLog(
          chatModel, "${auth.currentUser!.displayName ?? ""} left");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> kickUser(
      ChatModel chatModel, String uid, String name) async {
    try {
      final participants = List<String>.from(chatModel.participants);
      participants.remove(uid);
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "participants": participants,
        "kicked": FieldValue.arrayUnion([uid]),
      });
      ChatServices.sendLog(
          chatModel, "${auth.currentUser!.displayName ?? ""} kicked $name");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> makeAdmin(ChatModel chatModel, String uid) async {
    try {
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "admins": FieldValue.arrayUnion([uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> removeAdmin(ChatModel chatModel, String uid) async {
    try {
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "admins": FieldValue.arrayRemove([uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> blockUser(
      ChatModel chatModel, String uid, String name) async {
    try {
      final participants = List<String>.from(chatModel.participants);
      participants.remove(uid);
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "participants": participants,
        "blocked": FieldValue.arrayUnion([uid]),
      });
      ChatServices.sendLog(
          chatModel, "${auth.currentUser!.displayName ?? ""} blocked $name");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> editPermission(
      ChatModel chatModel,
      bool? memberCanAddMember,
      bool? memberCanEdit,
      bool? memberCanMessage) async {
    try {
      await firestore.collection("chats").doc(chatModel.chatId).update({
        if (memberCanAddMember != null)
          "memberCanAddMember": memberCanAddMember,
        if (memberCanEdit != null) "memberCanEdit": memberCanEdit,
        if (memberCanMessage != null) "memberCanMessage": memberCanMessage
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  //

  static void createGroup(
      {required String groupName,
      required String groupDescription,
      required String groupImagePath,
      required bool memberCanEdit,
      required bool memberCanAddMember,
      required bool memberCanMessage,
      required List<String> participantsIds}) async {
    try {
      final id = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().microsecondsSinceEpoch;
      final participants = List<String>.from(participantsIds)
        ..add(auth.currentUser!.uid);
      String url = "";
      if (groupImagePath.isNotEmpty) {
        final File? imageFile =
            groupImagePath.isEmpty ? null : File(groupImagePath);
        if (imageFile != null) {
          final ref = await storage
              .ref("/groupImage/${imageFile.path.split("/").last}")
              .putFile(imageFile);
          url = await ref.ref.getDownloadURL();
        }
      }

      await firestore.collection("chats").doc(id).set({
        "chatId": id,
        "isGroup": true,
        "order": date,
        "groupName": groupName,
        "groupDescription": groupDescription,
        "groupImage": url,
        "memberCanEdit": memberCanEdit,
        "memberCanAddMember": memberCanAddMember,
        "memberCanMessage": memberCanMessage,
        "history": participants, //if user leave the history members keep data
        "participants": participants, // it means the current members
        "blocked": [], //blocked members
        "leaved": [], //leaved members
        "admins": [auth.currentUser!.uid],
        "lastMessage": "Who chat first 🌙",
        "lastMessageSender": auth.currentUser!.uid,
        "lastMessageTime": date,
        "createdBy": auth.currentUser!.uid,
        "createdAt": date,
        "messageCount": 0,
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> addMembers(
      {required ChatModel chatModel,
      required List<UserModels> participants}) async {
    try {
      List<String> membersIds = [], membersNames = [];
      for (var user in participants) {
        membersIds.add(user.uid);
        membersNames.add(user.name);
      }
      final int time = DateTime.now().millisecondsSinceEpoch;
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "participants": FieldValue.arrayUnion(membersIds),
        "history": FieldValue.arrayUnion(membersIds),
        "joinedDate": FieldValue.arrayUnion([
          ...membersIds.map(
            (e) => {e: time},
          )
        ])
      });
      ChatServices.sendLog(chatModel,
          "${auth.currentUser!.displayName ?? ""} added $membersNames");
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<List<UserModels>> getContacts() async {
    try {
      final myData = await firestore
          .collection("users")
          .doc(auth.currentUser!.uid)
          .get()
          .then((value) {
        return UserModels.fromJson(value.data()!);
      });
      final contacts = myData.contacts;
      if (contacts != null && contacts.isNotEmpty) {
        List<Future<UserModels>> futures = [];

        for (var key in contacts.keys) {
          futures.add(firestore
              .collection("users")
              .doc(contacts[key])
              .get()
              .then((value) => UserModels.fromJson(value.data()!)));
        }

        return await Future.wait(futures);
      }
      return [];
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendMessage(ChatModel chatModel, String message) async {
    try {
      ChatServices.sendMessage(chatModel, message,
          userName: auth.currentUser!.displayName ?? "");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendImage(ChatModel chatModel, String path) async {
    try {
      ChatServices.sendImage(chatModel, path,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Image");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendVideo(ChatModel chatModel, String path) async {
    try {
      await ChatServices.sendVideo(chatModel, path,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Video");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendDocument(ChatModel chatModel, String path) async {
    try {
      ChatServices.sendDocument(chatModel, path,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Document");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendAudioFile(
      ChatModel chatModel, File audio, List<double> waveList) async {
    try {
      return await ChatServices.sendAudioFile(chatModel, audio, waveList,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Audio");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendLink(ChatModel chatModel, String link) async {
    try {
      ChatServices.sendLink(chatModel, link,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: $link");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendSticker(ChatModel chatModel, String sticker) async {
    try {
      ChatServices.sendSticker(chatModel, sticker,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Sticker");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendPoll(
      ChatModel chatModel, String question, List<String> options) async {
    try {
      ChatServices.sendPoll(chatModel, question, options,
          lastMessage: auth.currentUser!.displayName != null
              ? null
              : "${auth.currentUser!.displayName}: Poll");
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> votePoll(ChatModel chatModel, String messageId,
      String option, Map<String, dynamic> votes) async {
    try {
      ChatServices.votePoll(chatModel, messageId, option, votes);
    } on AppException catch (e) {
      rethrow;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> deleteMessage(
      ChatModel chatModel, String messageId) async {
    try {
      await firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({
        "message": "This message has been deleted",
        "messageType": "delete"
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> muteChat(ChatModel chatModel) async {
    try {
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "muted": FieldValue.arrayUnion([auth.currentUser!.uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> unmuteChat(ChatModel chatModel) async {
    try {
      await firestore.collection("chats").doc(chatModel.chatId).update({
        "muted": FieldValue.arrayRemove([auth.currentUser!.uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void addReaction(ChatModel chatModel, String messageId, String emoji) {
    try {
      firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({"reactions.${auth.currentUser!.uid}": emoji});
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<ChatModel> reloadGroupData(ChatModel chatModel) async {
    try {
      final data = await box.get(chatModel.chatId);
      return await firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .get()
          .then((value) {
        return ChatModel.fromJson(value.data()!, data);
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }
}
