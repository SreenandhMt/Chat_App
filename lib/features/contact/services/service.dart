import 'dart:developer';

import 'package:chat_app/core/exceptions.dart';
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } catch (e) {
      throw UnknownException(details: e.toString());
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<List<Contact>> getAllContact() async {
    try {
      List<Contact> contacts =
          await FlutterContacts.getContacts(withProperties: true);
      return contacts;
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<List<UserModels>> getContactsFromFirebase() async {
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<ChatModel?> checkChatExist(String uid) async {
    try {
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static Future<bool> checkBlockedMembers(String uid) async {
    try {
      return await firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .get()
          .then((value) =>
              List.from(value.data()!["blocked"] ?? []).contains(uid));
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }

  static void createChat(List<String> participants) async {
    try {
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
    } on FirebaseException catch (e) {
      throw ServerException(details: e.message);
    } on AppException catch (_) {
      rethrow;
    } catch (e) {
      throw UnknownException(details: e.toString());
    }
  }
}
