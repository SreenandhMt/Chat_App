import 'package:chat_app/route/navigation_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class AuthChecker {
  static void checkAuth(BuildContext context) async {
    if (FirebaseAuth.instance.currentUser == null) {
      NavigationUtils.introductionPage(context);
    } else if (!await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) => value.exists)) {
      NavigationUtils.createProfilePage(context);
    } else {
      NavigationUtils.home(context);
    }
  }
}
