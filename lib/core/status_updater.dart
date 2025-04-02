import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnlineStatusManager with WidgetsBindingObserver {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void init() {
    WidgetsBinding.instance.addObserver(this);
    setUserOnline();
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  Future<void> setUserOnline() async {
    final user = _auth.currentUser;
    if (user == null) return;

    await _firestore.collection('users').doc(user.uid).update({
      'status': 'online',
      'lastSeen': FieldValue.serverTimestamp(),
    });
  }

  Future<void> setUserOffline() async {
    final user = _auth.currentUser;
    if (user == null) return;

    await _firestore.collection('users').doc(user.uid).update({
      'status': 'offline',
      'lastSeen': FieldValue.serverTimestamp(),
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      setUserOffline();
    } else if (state == AppLifecycleState.resumed) {
      setUserOnline();
    }
  }
}
