import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class AuthService {
  AuthService._();

  static Future<String> signinWithPhoneNumber(String phoneNumber) async {
    Completer<String> completer = Completer<String>();
    await _auth
        .verifyPhoneNumber(
      phoneNumber: phoneNumber,
      codeAutoRetrievalTimeout: (id) {
        if (!completer.isCompleted) {
          completer.complete(id);
        }
      },
      verificationFailed: (error) {
        log(error.toString());
        if (!completer.isCompleted) {
          completer.completeError(error);
        }
      },
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      codeSent: (String id, int? resendToken) async {
        if (!completer.isCompleted) {
          completer.complete(id);
        }
      },
    )
        .then((value) {
      return value;
    });
    return completer.future;
  }

  static Future<void> verifyOTP(String verificationId, String otp) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otp);
    await _auth.signInWithCredential(credential);
  }

  static Future<void> createProfile(String name) async {
    try {
      await _firestore.collection("users").doc(_auth.currentUser!.uid).set({
        "user-name": name,
        "phone-number": _auth.currentUser!.phoneNumber!,
        "profile-image": "",
        "created-date": DateTime.now().microsecondsSinceEpoch,
        "status": "Online",
        "lastSeen": DateTime.now().toString(),
        "about": "Hey, I'm Online",
        "uid": _auth.currentUser!.uid,
      });
      _auth.currentUser!.updateDisplayName(name);
    } catch (e) {
      log(e.toString());
    }
  }
}
