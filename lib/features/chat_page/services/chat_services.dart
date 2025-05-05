import 'dart:developer';
import 'dart:io';

import 'package:chat_app/core/exceptions.dart';
import 'package:chat_app/core/file_type.dart';
import 'package:chat_app/core/url_loader.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_thumbnail_video/video_thumbnail.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
FirebaseAuth _auth = FirebaseAuth.instance;
FirebaseStorage _storage = FirebaseStorage.instance;

class ChatServices {
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllChats(
      ChatModel chatModel) {
    try {
      return _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .orderBy("timestamp", descending: true)
          .snapshots();
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void updateMessageCount(ChatModel chatModel, String lastMessage,
      String lastMessageSender, int lastMessageTime) async {
    try {
      final box = Hive.box("chatsCount");
      final lastTime = DateTime.now().microsecondsSinceEpoch;
      box.put(chatModel.chatId, chatModel.messageCount + 1);
      return await _firestore.collection("chats").doc(chatModel.chatId).update({
        "messageCount": FieldValue.increment(1),
        "lastMessage": lastMessage,
        "lastMessageSender": lastMessageSender,
        "lastMessageTime": lastTime,
        "order": DateTime.now().microsecondsSinceEpoch,
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<List<ChatModel>> commonGroups(String uid) async {
    try {
      var querySnapshot = await _firestore
          .collection("chats")
          .where("isGroup", isEqualTo: true)
          .where('participants',
              arrayContainsAny: [uid, _auth.currentUser!.uid]).get();

      List<DocumentSnapshot<Map<String, dynamic>>> filteredDocs =
          querySnapshot.docs.where((doc) {
        List<dynamic> arrayField = doc['participants'];
        return arrayField.contains(uid) &&
            arrayField.contains(_auth.currentUser!.uid);
      }).toList();
      return filteredDocs.map((e) => ChatModel.fromJson(e.data()!, 0)).toList();
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void sendMessage(ChatModel chatModel, String message,
      {String userName = ""}) async {
    try {
      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": message,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "messageType": "text",
        "reactions": {},
        "timestamp": date
      });
      updateMessageCount(
          chatModel,
          userName.isEmpty ? message : "$userName: $message",
          _auth.currentUser!.uid,
          date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void sendLog(ChatModel chatModel, String message) async {
    try {
      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": message,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "messageType": "log",
        "reactions": {},
        "timestamp": date
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendImage(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    try {
      final file = File(path);

      final ref = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(file);
      final imageUrl = await ref.ref.getDownloadURL();

      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": imageUrl,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "messageType": "image",
        "reactions": {},
        "timestamp": date
      });
      updateMessageCount(
          chatModel, lastMessage ?? "Image", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendSticker(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    try {
      final file = File(path);

      final ref = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(file);
      final imageUrl = await ref.ref.getDownloadURL();
      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": imageUrl,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "messageType": "sticker",
        "reactions": {},
        "timestamp": date
      });
      updateMessageCount(
          chatModel, lastMessage ?? "Sticker", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendVideo(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    try {
      final file = File(path);
      final image = await VideoThumbnail.thumbnailFile(video: path);

      final ref = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(file);
      final url = await ref.ref.getDownloadURL();
      final imageRef = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(File(image.path));
      final imageUrl = await imageRef.ref.getDownloadURL();
      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": url,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "thumbnail": imageUrl,
        "messageType": "video",
        "reactions": {},
        "timestamp": date
      });
      updateMessageCount(
          chatModel, lastMessage ?? "Video", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendAudioFile(
      ChatModel chatModel, File audio, List<double> waveList,
      {String? lastMessage}) async {
    try {
      final id = DateTime.now().microsecondsSinceEpoch.toString();
      final ref = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(audio);
      final url = await ref.ref.getDownloadURL();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(id)
          .set(
        {
          "id": id,
          "message": url,
          "senderId": _auth.currentUser!.uid,
          "isSeenBy": [],
          "messageType": "audio",
          "reactions": {},
          "wave": waveList,
          "timestamp": date,
        },
      );
      updateMessageCount(
          chatModel, lastMessage ?? "Audio", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendDocument(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    try {
      final file = File(path);
      final ref = await _storage
          .ref(DateTime.now().microsecondsSinceEpoch.toString())
          .putFile(file);
      final url = await ref.ref.getDownloadURL();
      final messageId = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .set({
        "id": messageId,
        "message": url,
        "senderId": _auth.currentUser!.uid,
        "isSeenBy": [],
        "messageType": "document",
        "documentType": getFileType(file),
        "documentName": file.path.split("/").last,
        "reactions": {},
        "timestamp": date
      });
      updateMessageCount(
          chatModel, lastMessage ?? "Document", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendPoll(
      ChatModel chatModel, String question, List<String> options,
      {String? lastMessage}) async {
    try {
      final id = DateTime.now().microsecondsSinceEpoch.toString();
      Map<String, int> optionsMap = {for (var option in options) option: 0};
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(id)
          .set(
        {
          "id": id,
          "message": question,
          "senderId": _auth.currentUser!.uid,
          "isSeenBy": [],
          "messageType": "poll",
          "options": optionsMap,
          "votes": {},
          "reactions": {},
          "timestamp": date
        },
      );
      updateMessageCount(
          chatModel, lastMessage ?? "Poll", _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> sendLink(ChatModel chatModel, String link,
      {String? lastMessage}) async {
    try {
      final Map<String, String?> data =
          await UrlPreviewLoader.fetchLinkPreviewMeta(link);
      final title = data["title"] ?? "";
      final description = data["description"] ?? "";
      final imageUrl = data["image"] ?? "";

      final id = DateTime.now().microsecondsSinceEpoch.toString();
      final date = DateTime.now().millisecondsSinceEpoch;
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(id)
          .set(
        {
          "id": id,
          "message": link,
          "senderId": _auth.currentUser!.uid,
          "isSeenBy": [],
          "messageType": "link",
          "preview-title": title,
          "preview-description": description,
          "preview-imageUrl": imageUrl,
          "reactions": {},
          "timestamp": date
        },
      );
      updateMessageCount(
          chatModel, lastMessage ?? link, _auth.currentUser!.uid, date);
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> votePoll(ChatModel chatModel, String messageId,
      String option, Map<String, dynamic> votes) async {
    try {
      votes.forEach((key, value) {
        if (votes[key] is List && votes[key].contains(_auth.currentUser!.uid)) {
          _firestore
              .collection("chats")
              .doc(chatModel.chatId)
              .collection("messages")
              .doc(messageId)
              .update({
            "options.$key": FieldValue.increment(-1),
            "votes.$key": FieldValue.arrayRemove([_auth.currentUser!.uid])
          });
        }
      });
      _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({
        "options.$option": FieldValue.increment(1),
        "votes.$option": FieldValue.arrayUnion([_auth.currentUser!.uid])
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> deleteChatForMe(
      ChatModel chatModel, String messageId) async {
    try {
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({
        "hidechat": FieldValue.arrayUnion([_auth.currentUser!.uid])
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> deleteMessage(
      ChatModel chatModel, String messageId) async {
    try {
      await _firestore
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

  static void blockUser(ChatModel chatModel, String receiver) async {
    try {
      final participants = List<String>.from(chatModel.participants);
      participants.remove(_auth.currentUser!.uid);
      await _firestore.collection("chats").doc(chatModel.chatId).update({
        "participants": participants,
        "leaved": FieldValue.arrayUnion([_auth.currentUser!.uid]),
      });

      await _firestore.collection("users").doc(_auth.currentUser!.uid).update({
        "blocked": FieldValue.arrayUnion([receiver]),
      });
      sendLog(chatModel, "${_auth.currentUser!.displayName ?? ""} Blocked You");
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> muteChat(ChatModel chatModel) async {
    try {
      await _firestore.collection("chats").doc(chatModel.chatId).update({
        "muted": FieldValue.arrayUnion([_auth.currentUser!.uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> unmuteChat(ChatModel chatModel) async {
    try {
      await _firestore.collection("chats").doc(chatModel.chatId).update({
        "muted": FieldValue.arrayRemove([_auth.currentUser!.uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void setUserStatus(ChatModel chatModel, bool isTyping) async {
    try {
      if (!isTyping) {
        await _firestore
            .collection("chats")
            .doc(chatModel.chatId)
            .collection("messages")
            .doc(_auth.currentUser!.uid)
            .delete();
        return;
      }
      await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(_auth.currentUser!.uid)
          .set(
        {
          "id": _auth.currentUser!.uid,
          "message": "Typing..",
          "senderId": _auth.currentUser!.uid,
          "isSeenBy": [],
          "messageType": "typing",
          "reactions": {},
          "timestamp": DateTime.now().millisecondsSinceEpoch,
        },
      );
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<void> markMessageAsSeen(
      ChatModel chatModel, String messageId) async {
    try {
      final chatDoc = await _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .get();
      final isSeenBy = chatDoc.data()!["isSeenBy"] as List;
      if (!isSeenBy.contains(_auth.currentUser!.uid)) {
        _firestore
            .collection("chats")
            .doc(chatModel.chatId)
            .collection("messages")
            .doc(messageId)
            .update({
          "isSeenBy": FieldValue.arrayUnion([_auth.currentUser!.uid])
        });
      }
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void addReaction(ChatModel chatModel, String messageId, String emoji) {
    try {
      _firestore
          .collection("chats")
          .doc(chatModel.chatId)
          .collection("messages")
          .doc(messageId)
          .update({"reactions.${_auth.currentUser!.uid}": emoji});
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static String categorizeChat(DateTime messageTime) {
    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);
    final messageDate =
        DateTime(messageTime.year, messageTime.month, messageTime.day);

    final diff = today.difference(messageDate).inDays;

    if (diff == 0) return "Today";
    if (diff == 1) return "Yesterday";
    return "${messageTime.day}/${messageTime.month}/${messageTime.year}";
  }
}
