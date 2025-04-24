import 'dart:developer';
import 'dart:io';

import 'package:chat_app/features/settings/models/notification_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';

import '../../auth/models/user_models.dart';

class SettingService {
  static final box = Hive.box("setting");
  //security
  static void createAppLock({required int pin}) {
    box.put("appLock", pin);
  }

  static int? getAppLock() {
    final data = box.get("appLock");
    log(data.toString());
    return data;
  }

  static void deleteAppLock() {
    box.delete("appLock");
  }

  static void forgetAppLock() {
    box.delete("appLock");
  }

  //localization
  static void changeLanguage(String languageCode, String languageName) {
    box.put("Language", languageCode);
    box.put("LanguageName", languageCode);
  }

  static String getLanguage() {
    final data = box.get("Language");
    if (data == null) {
      return "en";
    }
    return data;
  }

  static String getLanguageName() {
    final data = box.get("LanguageName");
    if (data == null) {
      return "English";
    }
    return data;
  }

  //wallpaper
  static int getWallpaper() {
    final data = box.get("wallpaperIndex");
    if (data == null) {
      return 0;
    }
    return data;
  }

  static void setWallpaper(int index) {
    box.put("wallpaperIndex", index);
  }

  //theme
  static void getTheme() {}

  static void setTheme() {}

  //notification
  static List<NotificationModel> getNotificationSettings() {
    List<NotificationModel> models = [];
    for (var type in NotificationType.values) {
      final data = box.get(type.name);
      if (data == null) {
        models.add(NotificationModel(type: type, status: true));
        continue;
      }
      models.add(NotificationModel(type: type, status: data));
    }
    return models;
  }

  static void setNotificationSetting(NotificationType type, bool status) {
    box.put(type.name, status);
    FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({type.name: status});
  }

  static Future<UserModels> getUserProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    final data = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();
    return UserModels.fromJson(data.data()!);
  }

  static Future<void> editProfile({String? name, String? path}) async {
    final user = FirebaseAuth.instance.currentUser;
    String imageUrl = "";
    if (path != null) {
      final file = File(path);
      final ref = FirebaseStorage.instance
          .ref()
          .child("users")
          .child(user!.uid)
          .child(file.path.split("/").last);
      await ref.putFile(file);
      imageUrl = await ref.getDownloadURL();
    }
    await FirebaseFirestore.instance.collection("users").doc(user!.uid).update({
      if (name != null) "user-name": name,
      if (path != null) "profile-image": imageUrl
    });
    if (name != null) {
      user.updateDisplayName(name);
    }
    if (path != null) {
      user.updatePhotoURL(imageUrl);
    }
  }
}
