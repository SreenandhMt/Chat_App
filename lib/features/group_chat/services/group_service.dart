import 'dart:developer';
import 'dart:io';

import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/services/chat_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../home/models/chat_model.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseStorage storage = FirebaseStorage.instance;

class GroupService {
  static Future<Map<String, UserModels>> getAllUsers(
      List<String> participants) async {
    Map<String, UserModels> allMembers = {};
    for (var user in participants) {
      final userModel =
          await firestore.collection("users").doc(user).get().then(
                (value) => UserModels.fromJson(value.data()!),
              );
      allMembers.addEntries({userModel.uid: userModel}.entries);
    }
    return allMembers;
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>>? getAllChats(
      ChatModel chatModel) {
    try {
      return firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .orderBy("timestamp", descending: true)
          .snapshots();
    } catch (e) {
      log(e.toString());
      return null;
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
    } catch (e) {
      log(e.toString());
    }
  }

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
      final File? imageFile =
          groupImagePath.isEmpty ? null : File(groupImagePath);
      String url = "";
      if (imageFile != null) {
        final ref = await storage
            .ref("/groupImage/${imageFile.path.split("/").last}")
            .putFile(imageFile);
        url = await ref.ref.getDownloadURL();
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
        "lastMessage": "",
        "lastMessageSender": auth.currentUser!.uid,
        "lastMessageTime": date,
        "createdBy": auth.currentUser!.uid,
        "createdAt": date,
        "messageCount": 0,
      });
    } catch (e) {
      log(e.toString());
    }
  }

  static void addMembers(
      {required String chatId, required List<String> participantsIds}) async {
    try {
      await firestore.collection("chats").doc(chatId).update({
        "participants": FieldValue.arrayUnion(participantsIds),
        "history": FieldValue.arrayUnion(participantsIds),
      });
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<List<UserModels>> getContacts() async {
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
  }

  static void sendMessage(ChatModel chatModel, String message) async {
    ChatServices.sendMessage(chatModel, message,
        userName: auth.currentUser!.displayName ?? "");
  }

  static void sendImage(ChatModel chatModel, String path) async {
    ChatServices.sendImage(chatModel, path,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Image");
  }

  static void sendVideo(ChatModel chatModel, String path) async {
    ChatServices.sendVideo(chatModel, path,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Video");
  }

  static void sendDocument(ChatModel chatModel, String path) async {
    ChatServices.sendDocument(chatModel, path,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Document");
  }

  static Future<void> sendAudioFile(
      ChatModel chatModel, File audio, List<double> waveList) async {
    return await ChatServices.sendAudioFile(chatModel, audio, waveList,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Audio");
  }

  static void sendLink(ChatModel chatModel, String link) async {
    ChatServices.sendLink(chatModel, link,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: $link");
  }

  static void sendSticker(ChatModel chatModel, String sticker) async {
    ChatServices.sendSticker(chatModel, sticker,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Sticker");
  }

  static void sendPoll(
      ChatModel chatModel, String question, List<String> options) async {
    ChatServices.sendPoll(chatModel, question, options,
        lastMessage: auth.currentUser!.displayName != null
            ? null
            : "${auth.currentUser!.displayName}: Poll");
  }

  static void votePoll(ChatModel chatModel, String messageId, String option,
      Map<String, dynamic> votes) async {
    ChatServices.votePoll(chatModel, messageId, option, votes);
  }

  static void deleteMessage(ChatModel chatModel, String messageId) async {
    await firestore
        .collection("chats")
        .doc(chatModel.chatId)
        .collection("messages")
        .doc(messageId)
        .update({
      "message": "This message has been deleted",
      "messageType": "delete"
    });
  }

  static void addReaction(ChatModel chatModel, String messageId, String emoji) {
    firestore
        .collection("chats")
        .doc(chatModel.chatId)
        .collection("messages")
        .doc(messageId)
        .update({"reactions.${auth.currentUser!.uid}": emoji});
  }
}
