import 'package:chat_app/core/exceptions.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
FirebaseAuth _auth = FirebaseAuth.instance;

class HomeService {
  static Future<List<ChatModel>> getChats(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> data) async {
    try {
      if (data.isEmpty) return [];
      List<ChatModel> chats = [];
      final box = Hive.box("chatsCount");
      final chatModels = data.map(
        (e) {
          return ChatModel.fromJson(e.data(), box.get(e.data()["chatId"]));
        },
      ).toList();

      for (var chatModel in chatModels) {
        if (chatModel.isGroup) {
          chats.add(chatModel);
          continue;
        }
        final user = await _firestore
            .collection("users")
            .doc(chatModel.membersHistory.firstWhere(
                (element) => element != _auth.currentUser!.uid,
                orElse: () => ""))
            .get()
            .then((value) => UserModels.fromJson(value.data()!));
        chatModel = chatModel.copyWith(userModel: user);
        chats.add(chatModel);
      }

      return chats;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>>? getChatStream() {
    try {
      return _firestore
          .collection("chats")
          .where("participants", arrayContains: _auth.currentUser!.uid)
          .orderBy("order", descending: true)
          .snapshots();
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }
}
