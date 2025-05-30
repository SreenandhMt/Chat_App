import 'package:agora_token_service/agora_token_service.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/calls_screen/models/call_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/exceptions.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
FirebaseAuth _auth = FirebaseAuth.instance;

class CallingService {
  static Future<List<CallModel>> callHistory() async {
    try {
      if (_auth.currentUser == null) return [];
      List<CallModel> history = [];
      final docsList = await _firestore
          .collection("callHistory")
          .where("participantsID", arrayContains: _auth.currentUser!.uid)
          .limit(15)
          .orderBy("order", descending: true)
          .get();
      for (var doc in docsList.docs) {
        UserModels? userModels;
        if (doc.data()["callType"] == "normal") {
          final users = (doc.data()["participantsID"] as List)
              .where((value) => value != _auth.currentUser!.uid)
              .toList();
          if (users.isEmpty) continue;
          userModels =
              await _firestore.collection("users").doc(users.first).get().then(
                    (value) => UserModels.fromJson(value.data()!),
                  );
        }
        history.add(CallModel.fromMap(doc.data(), user: userModels));
      }
      return history;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<Stream<QuerySnapshot<Map<String, dynamic>>>?>
      getCallStream() async {
    try {
      if (_auth.currentUser == null) return null;
      return _firestore
          .collection("calls")
          .where("participantsID", arrayContains: _auth.currentUser!.uid)
          .snapshots();
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<void> pickUpReceiverNormalCall(String callId) {
    try {
      return _firestore.collection("calls").doc(callId).update({
        "status": "accepted",
        "participants.${_auth.currentUser!.uid}.leftAt": null,
        "participants.${_auth.currentUser!.uid}.joinedAt": Timestamp.now(),
        "joinedUsers": FieldValue.arrayUnion([_auth.currentUser!.uid]),
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<void> rejectReceiverNormalCall(CallModel callModel) async {
    try {
      await _firestore.collection("calls").doc(callModel.historyId).delete();
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      await _firestore.collection("callHistory").doc(id).set({
        "historyId": id,
        "callerId": callModel.callerId,
        "participantsID": callModel.participantsID,
        "participants": {
          ...callModel.participants.map((key, value) {
            return MapEntry(key,
                {"joinedAt": value["joinedAt"], "leftAt": Timestamp.now()});
          }),
        },
        if (callModel.groupId != null) ...{
          "groupId": callModel.groupId,
          "groupImage": callModel.groupImage,
          "groupName": callModel.groupName,
        },
        "callType": callModel.callType,
        "status": "rejected",
        "isVideoCall": callModel.isVideoCall,
        "startTime": callModel.startTime,
        "endTime": Timestamp.now()
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<CallModel?> convertCallModel(
      {required Map<String, dynamic> callData}) async {
    try {
      UserModels? userModels;
      if (callData["callType"] == "normal") {
        final users = (callData["participantsID"] as List)
            .where((value) => value != _auth.currentUser!.uid);
        if (users.isEmpty) return null;
        userModels =
            await _firestore.collection("users").doc(users.first).get().then(
                  (value) => UserModels.fromJson(value.data()!),
                );
      } else {
        List<UserModels> userModels = [];
        final users =
            (callData["participants"] as Map<String, dynamic>).keys.toList();
        if (users.isEmpty) return null;
        for (var user in users) {
          userModels
              .add(await _firestore.collection("users").doc(user).get().then(
                    (value) => UserModels.fromJson(value.data()!),
                  ));
        }
        return CallModel.fromMap(callData, groupCallMembers: userModels);
      }
      return CallModel.fromMap(callData, user: userModels);
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static String _getToken() {
    try {
      final expirationInSeconds = 3600;
      final currentTimestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final expireTimestamp = currentTimestamp + expirationInSeconds;
      return RtcTokenBuilder.build(
        appId: "6917987a0ae941c2bcc8ec15c880761b",
        appCertificate: "5ca6444cf1e248b0940b68cb28257b71",
        channelName: "test",
        uid: "0",
        role: RtcRole.publisher,
        expireTimestamp: expireTimestamp,
      );
    } catch (_) {
      rethrow;
    }
  }

  static Future<CallModel> normalCall({required UserModels receiver}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      final map = {
        "callId": id,
        "callerId": _auth.currentUser!.uid,
        "token": _getToken(),
        "participantsID": [
          _auth.currentUser!.uid,
          receiver.uid,
        ],
        "participants": {
          _auth.currentUser!.uid: {
            "joinedAt": Timestamp.now(),
            "leftAt": null,
          },
        },
        "callType": "normal",
        "status": "ringing",
        "startTime": Timestamp.now(),
        "endTime": null
      };
      await _firestore.collection("calls").doc(id).set(map);
      final callModel = CallModel.fromMap(map, user: receiver);
      return callModel;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<CallModel> normalCallWithVideo(
      {required UserModels receiver}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      final map = {
        "callId": id,
        "callerId": _auth.currentUser!.uid,
        "token": _getToken(),
        "participantsID": [
          _auth.currentUser!.uid,
          receiver.uid,
        ],
        "participants": {
          _auth.currentUser!.uid: {
            "joinedAt": Timestamp.now(),
            "leftAt": null,
          },
        },
        "callType": "normal",
        "status": "ringing",
        "isVideoCall": true,
        "startTime": Timestamp.now(),
        "endTime": null
      };
      await _firestore.collection("calls").doc(id).set(map);
      final callModel = CallModel.fromMap(map, user: receiver);
      return callModel;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<CallModel> groupCall(
      {required String chatId,
      required String image,
      required String groupName,
      required List<String> participants}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      final map = {
        "callId": id,
        "callerId": _auth.currentUser!.uid,
        "token": _getToken(),
        "participantsID": [
          _auth.currentUser!.uid,
          ...participants,
        ],
        "participants": {
          _auth.currentUser!.uid: {
            "joinedAt": Timestamp.now(),
            "leftAt": null,
          },
        },
        "groupId": chatId,
        "groupImage": image,
        "groupName": groupName,
        "callType": "group",
        "status": "ringing",
        "startTime": Timestamp.now(),
        "endTime": null
      };
      await _firestore.collection("calls").doc(id).set(map);
      final callModel = CallModel.fromMap(map);
      return callModel;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<CallModel> groupVideoCall(
      {required String chatId,
      required String image,
      required String groupName,
      required List<String> participants}) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      final map = {
        "callId": id,
        "callerId": _auth.currentUser!.uid,
        "token": _getToken(),
        "participantsID": [
          _auth.currentUser!.uid,
          ...participants,
        ],
        "participants": {
          _auth.currentUser!.uid: {
            "joinedAt": Timestamp.now(),
            "leftAt": null,
          },
        },
        "groupId": chatId,
        "groupImage": image,
        "groupName": groupName,
        "callType": "group",
        "status": "ringing",
        "startTime": Timestamp.now(),
        "isVideoCall": true,
        "endTime": null
      };
      await _firestore.collection("calls").doc(id).set(map);
      final callModel = CallModel.fromMap(map);
      return callModel;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<void> endGroupCall(CallModel callModel) async {
    try {
      await _firestore.collection("calls").doc(callModel.historyId).delete();
      final id = DateTime.now().millisecondsSinceEpoch;
      await _firestore.collection("callHistory").doc(id.toString()).set({
        "order": id,
        "historyId": id.toString(),
        "callerId": _auth.currentUser!.uid,
        "participantsID": callModel.participantsID,
        "participants": {
          _auth.currentUser!.uid: {
            "joinedAt": Timestamp.now(),
            "leftAt": null,
          },
          ...callModel.participants.map((key, value) {
            return MapEntry(
                key, {"joinedAt": value["joinedAt"], "leftAt": null});
          }),
        },
        "groupId": callModel.groupId,
        "groupImage": callModel.groupImage,
        "groupName": callModel.groupName,
        "callType": callModel.callType,
        "status": callModel.status == "ringing" ? "missed" : "accepted",
        "startTime": callModel.startTime,
        "isVideoCall": callModel.isVideoCall,
        "endTime": Timestamp.now()
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<void> callEnd(CallModel callModel) async {
    try {
      await _firestore.collection("calls").doc(callModel.historyId).delete();
      final id = DateTime.now().millisecondsSinceEpoch;
      await _firestore.collection("callHistory").doc(id.toString()).set({
        "order": id,
        "historyId": id.toString(),
        "callerId": callModel.callerId,
        "participantsID": callModel.participantsID,
        "participants": {
          ...callModel.participants.map((key, value) {
            return MapEntry(key,
                {"joinedAt": value["joinedAt"], "leftAt": Timestamp.now()});
          }),
        },
        if (callModel.groupId != null) ...{
          "groupId": callModel.groupId,
          "groupImage": callModel.groupImage,
          "groupName": callModel.groupName,
        },
        "callType": callModel.callType,
        "status": callModel.status == "ringing" ? "missed" : "accepted",
        "isVideoCall": callModel.isVideoCall,
        "startTime": callModel.startTime,
        "endTime": Timestamp.now()
      });
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<List<UserModels>> participantMembers(
      CallModel callModel) async {
    try {
      List<UserModels> users = [];
      final ids = callModel.participants.keys.toList();
      for (var id in ids) {
        if (id == _auth.currentUser!.uid) continue;
        await FirebaseFirestore.instance
            .collection("users")
            .doc(id)
            .get()
            .then((value) {
          users.add(UserModels.fromJson(value.data()!));
        });
      }
      return users;
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }

  static Future<List<CallModel>> selectedHistory(CallModel callModel) async {
    try {
      if (callModel.callType == "normal") {
        return await FirebaseFirestore.instance
            .collection("callHistory")
            .where("callerId", isEqualTo: callModel.callerId)
            .where("participantsID", arrayContains: _auth.currentUser!.uid)
            .limit(5)
            .orderBy("order", descending: true)
            .get()
            .then((value) {
          return value.docs.map((e) => CallModel.fromMap(e.data())).toList();
        });
      } else {
        return await FirebaseFirestore.instance
            .collection("callHistory")
            .where("groupId", isEqualTo: callModel.groupId)
            .where("participantsID", arrayContains: _auth.currentUser!.uid)
            .limit(5)
            .orderBy("order", descending: false)
            .get()
            .then((value) {
          return value.docs.map((e) => CallModel.fromMap(e.data())).toList();
        });
      }
    } on FirebaseException catch (e) {
      throw ServerException(details: "Error Calling: ${e.message}");
    } catch (e) {
      throw UnknownException(details: "Error Calling: ${e.toString()}");
    }
  }
}
