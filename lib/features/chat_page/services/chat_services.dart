import 'dart:io';
import 'dart:ui';

import 'package:chat_app/core/file_type.dart';
import 'package:chat_app/core/url_loader.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart' as img;
import 'package:video_player/video_player.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
FirebaseAuth _auth = FirebaseAuth.instance;
FirebaseStorage _storage = FirebaseStorage.instance;

class ChatServices {
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllChats(
      ChatModel chatModel) {
    return _firestore
        .collection("chats")
        .doc(chatModel.chatId)
        .collection("messages")
        .orderBy("timestamp", descending: true)
        .snapshots();
  }

  static void updateMessageCount(ChatModel chatModel, String lastMessage,
      String lastMessageSender, int lastMessageTime) async {
    return await _firestore.collection("chats").doc(chatModel.chatId).update({
      "messageCount": FieldValue.increment(1),
      "lastMessage": lastMessage,
      "lastMessageSender": lastMessageSender,
      "lastMessageTime": lastMessageTime,
      "order": DateTime.now().microsecondsSinceEpoch,
    });
  }

  static void sendMessage(ChatModel chatModel, String message,
      {String userName = ""}) async {
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
  }

  static void sendImage(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    final file = File(path);
    final bytes = await file.readAsBytes();
    img.Image? image = img.decodeImage(bytes);

    final ref = await _storage
        .ref(DateTime.now().microsecondsSinceEpoch.toString())
        .putFile(file);
    final imageUrl = await ref.ref.getDownloadURL();

    final width = image!.width;
    final height = image.height;
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
      "width": width,
      "height": height,
      "timestamp": date
    });
    updateMessageCount(
        chatModel, lastMessage ?? "Image", _auth.currentUser!.uid, date);
  }

  static void sendSticker(ChatModel chatModel, String path,
      {String? lastMessage}) async {
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
  }

  static Future<void> sendVideo(ChatModel chatModel, String path,
      {String? lastMessage}) async {
    final file = File(path);
    final ref = await _storage
        .ref(DateTime.now().microsecondsSinceEpoch.toString())
        .putFile(file);
    final url = await ref.ref.getDownloadURL();
    final size = await getVideoSize(url);
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
      "messageType": "video",
      "reactions": {},
      "width": size.width,
      "height": size.height,
      "timestamp": date
    });
    updateMessageCount(
        chatModel, lastMessage ?? "Video", _auth.currentUser!.uid, date);
  }

  static Future<void> sendAudioFile(
      ChatModel chatModel, File audio, List<double> waveList,
      {String? lastMessage}) async {
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
  }

  static void sendDocument(ChatModel chatModel, String path,
      {String? lastMessage}) async {
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
  }

  static void sendPoll(
      ChatModel chatModel, String question, List<String> options,
      {String? lastMessage}) async {
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
  }

  static void sendLink(ChatModel chatModel, String link,
      {String? lastMessage}) async {
    final title = await UrlPreviewLoader.getMetaTagContent(link, 'og:title') ??
        await UrlPreviewLoader.getTitle(link);
    final description =
        await UrlPreviewLoader.getMetaTagContent(link, 'og:description') ??
            await UrlPreviewLoader.getMetaTagContent(link, 'description');
    final imageUrl = await UrlPreviewLoader.getMetaTagContent(link, 'og:image');

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
  }

  static void votePoll(ChatModel chatModel, String messageId, String option,
      Map<String, dynamic> votes) async {
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
  }

  static void deleteMessage(ChatModel chatModel, String messageId) async {
    await _firestore
        .collection("chats")
        .doc(chatModel.chatId)
        .collection("messages")
        .doc(messageId)
        .update({
      "message": "This message has been deleted",
      "messageType": "delete"
    });
  }

  static void setUserStatus(ChatModel chatModel, bool isTyping) async {
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
  }

  static void markMessageAsSeen(ChatModel chatModel, String messageId) async {
    if (chatModel.participants.contains(messageId)) return;
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
  }

  static void addReaction(ChatModel chatModel, String messageId, String emoji) {
    _firestore
        .collection("chats")
        .doc(chatModel.chatId)
        .collection("messages")
        .doc(messageId)
        .update({"reactions.${_auth.currentUser!.uid}": emoji});
  }

  static Future<Size> getVideoSize(String videoUrl) async {
    final VideoPlayerController controller =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl));

    await controller.initialize();
    double width = controller.value.size.width;
    double height = controller.value.size.height;

    controller.dispose();
    return Size(width, height);
  }
}
