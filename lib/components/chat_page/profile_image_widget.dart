import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  final String uid;

  const UserProfileScreen({super.key, required this.uid});

  Future<Map<String, dynamic>?> getUserProfile() async {
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection("users").doc(uid).get();

    if (userDoc.exists) {
      return userDoc.data() as Map<String, dynamic>;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>?>(
      future: getUserProfile(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            strokeWidth: 0.4,
          ));
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Center(child: Text("User not found"));
        }

        final userData = snapshot.data!;
        return CircleAvatar(
          radius: 15,
          backgroundImage: userData['profile-image'] != null
              ? NetworkImage(userData['profile-image'])
              : null,
        );
      },
    );
  }
}
