import 'dart:developer';

import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

import '../../auth/models/user_models.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore firestore = FirebaseFirestore.instance;

class ContactService {
  static final userCollection = FirebaseFirestore.instance.collection('users');
  static Future<bool> checkUserUseApp(String phoneNumber) async {
    try {
      QuerySnapshot snapshot = await userCollection
          .where("phone-number", isEqualTo: phoneNumber)
          .get();
      if (snapshot.docs.isNotEmpty) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(_auth.currentUser!.uid)
            .update({
          "contacts.$phoneNumber":
              (snapshot.docs.first.data() as Map<String, dynamic>)["uid"],
        });
        return true;
      }
    } catch (e) {
      log(e.toString());
    }
    return false;
  }

  static Future<List<UserModels>> getContacts() async {
    try {
      final myData = await firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
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
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  static Future<List<UserModels>> getSavedContactsInApp() async {
    try {
      List<Contact> contacts =
          await FlutterContacts.getContacts(withProperties: true);
      for (var element in contacts) {
        checkUserUseApp(element.phones.first.normalizedNumber);
      }
      List<UserModels> registeredContacts = await getContacts();
      return registeredContacts;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  static Future<List<Contact>> getAllContact() async {
    List<Contact> contacts =
        await FlutterContacts.getContacts(withProperties: true);
    return contacts;
  }

  static Future<List<UserModels>> getContactsFromFirebase() async {
    final myData = await firestore
        .collection("users")
        .doc(_auth.currentUser!.uid)
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

  static Future<ChatModel?> checkChatExist(String uid) async {
    var querySnapshot = await firestore
        .collection("chats")
        .where("isGroup", isEqualTo: false)
        .where('participants',
            arrayContainsAny: [uid, _auth.currentUser!.uid]).get();

    List<DocumentSnapshot<Map<String, dynamic>>> filteredDocs =
        querySnapshot.docs.where((doc) {
      List<dynamic> arrayField = doc['participants'];
      return arrayField.contains(uid) &&
          arrayField.contains(_auth.currentUser!.uid);
    }).toList();
    return filteredDocs.isEmpty
        ? null
        : filteredDocs.map((e) => ChatModel.fromJson(e.data()!, 0)).first;
  }

  static Future<bool> checkBlockedMembers(String uid) async {
    return await firestore
        .collection("users")
        .doc(_auth.currentUser!.uid)
        .get()
        .then(
            (value) => List.from(value.data()!["blocked"] ?? []).contains(uid));
  }

  static Future<void> unblockAndJoin(String chatId, String receiver) async {
    try {
      await firestore.collection("chats").doc(chatId).update({
        "participants": FieldValue.arrayUnion([_auth.currentUser!.uid]),
        "leaved": FieldValue.arrayRemove([_auth.currentUser!.uid]),
      });

      await firestore.collection("users").doc(_auth.currentUser!.uid).update({
        "blocked": FieldValue.arrayRemove([receiver]),
      });
    } catch (e) {
      log(e.toString());
    }
  }

  static void createChat(List<String> participants) async {
    final id = DateTime.now().microsecondsSinceEpoch.toString();
    final date = DateTime.now().microsecondsSinceEpoch;
    await firestore.collection("chats").doc(id).set({
      "chatId": id,
      "isGroup": false,
      "order": date,
      "history": participants, //if user leave the history members keep data
      "participants": participants, // it means the current members
      "blocked": [], //blocked members
      "leaved": [], //leaved members
      "lastMessage": "Who chat first ❤️",
      "lastMessageSender": _auth.currentUser!.uid,
      "lastMessageTime": date,
      "createdBy": _auth.currentUser!.uid,
      "createdAt": date,
      "messageCount": 1,
    });
  }
}
