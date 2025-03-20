import 'dart:developer';
import 'dart:io';

import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/status/models/status_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StatusService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseStorage _storage = FirebaseStorage.instance;

  static Future<void> createStatus(String filePath, String? caption) async {
    final file = File(filePath);
    final ref = await _storage
        .ref("statuses")
        .child(
            "${DateTime.now().microsecondsSinceEpoch}.${file.path.split(".").last}")
        .putFile(file);
    final url = await ref.ref.getDownloadURL();
    final id = DateTime.now().microsecondsSinceEpoch;
    await _firestore.collection("statuses").doc(id.toString()).set({
      "id": id.toString(),
      "image": url,
      "type": "image",
      "publishedAt": id,
      "order": id,
      "userId": _auth.currentUser!.uid,
      "timestamp": FieldValue.serverTimestamp(),
      "caption": caption,
      "views": [],
    });
  }

  static Future<void> createTextStatus(
      String text, int colorIndex, int styleIndex, String? caption) async {
    final id = DateTime.now().microsecondsSinceEpoch;
    await _firestore.collection("statuses").doc(id.toString()).set({
      "id": id.toString(),
      "text": text,
      "type": "text",
      "style": styleIndex,
      "color": colorIndex,
      "publishedAt": id,
      "order": id,
      "caption": caption,
      "userId": _auth.currentUser!.uid,
      "timestamp": FieldValue.serverTimestamp(),
      "views": [],
    });
  }

  static Future<Map<String, dynamic>?> getStatuses() async {
    try {
      Map<String, dynamic> statusList = {}, viewedList = {};
      final userModel = await _firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .get()
          .then(
            (value) => UserModels.fromJson(value.data()!),
          );
      final cutoff =
          Timestamp.fromDate(DateTime.now().subtract(Duration(hours: 24)));
      for (int i = 0; i < userModel.contacts!.entries.length; i++) {
        final entry = userModel.contacts!.entries.elementAt(i);
        final value = entry.value;

        final statuses = await _firestore
            .collection("statuses")
            .where("userId", isEqualTo: value)
            .where("timestamp", isGreaterThan: cutoff)
            .orderBy("order", descending: false)
            .get();
        if (statuses.docs.isEmpty) continue;

        final user = await _firestore.collection("users").doc(value).get().then(
              (value) => UserModels.fromJson(value.data()!),
            );

        final status =
            statuses.docs.map((e) => StatusModel.fromJson(e.data())).toList();
        log(status.toString());
        int viewedIndex = 0;
        for (var element in status) {
          if (element.views.contains(_auth.currentUser!.uid)) {
            viewedIndex++;
          }
        }
        if (viewedIndex >= status.length) {
          viewedList.addAll({
            value: {"status": status, "user": user, "isViewed": viewedIndex}
          });
        } else {
          statusList.addAll({
            value: {"status": status, "user": user, "isViewed": viewedIndex}
          });
        }
      }
      return {"viewed": viewedList, "new": statusList};
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  static void updateViews(String statusId) async {
    await _firestore.collection("statuses").doc(statusId).update({
      "views": FieldValue.arrayUnion([_auth.currentUser!.uid])
    });
  }

  static Future<Map<String, dynamic>?> updateStatus(String uid) async {
    try {
      final cutoff =
          Timestamp.fromDate(DateTime.now().subtract(Duration(hours: 24)));
      final statuses = await _firestore
          .collection("statuses")
          .where("userId", isEqualTo: uid)
          .where("timestamp", isGreaterThan: cutoff)
          .orderBy("order", descending: false)
          .get();

      final user = await _firestore.collection("users").doc(uid).get().then(
            (value) => UserModels.fromJson(value.data()!),
          );

      final status =
          statuses.docs.map((e) => StatusModel.fromJson(e.data())).toList();
      log(status.toString());
      int viewedIndex = 0;
      for (var element in status) {
        if (element.views.contains(_auth.currentUser!.uid)) {
          viewedIndex++;
        }
      }
      log(viewedIndex.toString());
      return {"status": status, "user": user, "isViewed": viewedIndex};
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<List<StatusModel>?> getMyStatuses() async {
    try {
      final cutoff =
          Timestamp.fromDate(DateTime.now().subtract(Duration(hours: 24)));
      List<StatusModel> statusList = [];
      final statuses = await _firestore
          .collection("statuses")
          .where("userId", isEqualTo: _auth.currentUser!.uid)
          .where("timestamp", isGreaterThan: cutoff)
          .orderBy("order", descending: false)
          .get();
      statusList =
          statuses.docs.map((e) => StatusModel.fromJson(e.data())).toList();

      return statusList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
