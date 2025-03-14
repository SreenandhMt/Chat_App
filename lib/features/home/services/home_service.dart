import 'dart:developer';

import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
FirebaseAuth _auth = FirebaseAuth.instance;

class HomeService {
  static Future<List<Map<String, dynamic>>> getChats(
      List<ChatModel> chatModels) async {
    try {
      List<Map<String, dynamic>> chats = [];

      for (var chatModel in chatModels) {
        if (chatModel.isGroup) {
          chats.add({"chat": chatModel});
          continue;
        }
        final user = await _firestore
            .collection("users")
            .doc(chatModel.participants
                .firstWhere((element) => element != _auth.currentUser!.uid))
            .get()
            .then((value) => UserModels.fromJson(value.data()!));
        chats.add({
          "chat": chatModel,
          "user": user,
        });
      }

      return chats;
    } catch (e) {
      log("HomeService getChat: $e");
      return [];
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>>? getChatStream() {
    return _firestore
        .collection("chats")
        .where("participants", arrayContains: _auth.currentUser!.uid)
        .orderBy("order", descending: true)
        .snapshots();
  }
}
