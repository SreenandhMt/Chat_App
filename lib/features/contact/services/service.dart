import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

import '../../auth/models/user_models.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore firestore = FirebaseFirestore.instance;

class ContactService {
  static final userCollection = FirebaseFirestore.instance.collection('users');
  static Future<bool> checkUserUseApp(String phoneNumber) async {
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
    return false;
  }

  static Future<List<UserModels>> getContacts() async {
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

  static Future<List<UserModels>> getSavedContactsInApp() async {
    List<Contact> contacts =
        await FlutterContacts.getContacts(withProperties: true);
    for (var element in contacts) {
      checkUserUseApp(element.phones.first.normalizedNumber);
    }
    List<UserModels> registeredContacts = await getContacts();
    return registeredContacts;
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
}
