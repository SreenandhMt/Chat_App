import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/core/exceptions.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/calls_screen/models/call_model.dart';
import 'package:chat_app/features/calls_screen/services/calling_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/remote_user_model.dart';

part 'calling_event.dart';
part 'calling_state.dart';
part 'calling_bloc.freezed.dart';

class CallingBloc extends Bloc<CallingEvent, CallingState> {
  CallingBloc() : super(_CallingPageState()) {
    on<_CallHistory>((event, emit) async {
      try {
        final response = await CallingService.callHistory();
        emit(state.copyWith(callHistory: response));
        final stream = await CallingService.getCallStream();
        emit(state.copyWith(stream: stream));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_UpdateActiveCalls>((event, emit) async {
      try {
        List<CallModel> activeCalls = [];
        if (event.docs.isEmpty) {
          emit(state.copyWith(activeCalls: []));
          return;
        }
        for (var doc in event.docs) {
          final callData =
              await CallingService.convertCallModel(callData: doc.data());
          if (callData == null) continue;
          activeCalls.add(callData);
        }
        emit(state.copyWith(activeCalls: activeCalls));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_UpdateCurrentCall>((event, emit) async {
      try {
        if (event.docs.data() == null) {
          emit(state.copyWith(currentCall: null));
          return;
        }

        final callData =
            await CallingService.convertCallModel(callData: event.docs.data()!);
        emit(state.copyWith(currentCall: callData));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_StartVideoCalling>((event, emit) async {
      try {
        final callModel =
            await CallingService.normalCallWithVideo(receiver: event.receiver);
        emit(state.copyWith(currentCall: callModel));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_StartVoiceCalling>((event, emit) async {
      try {
        emit(state.copyWith(currentCall: null));
        final callModel =
            await CallingService.normalCall(receiver: event.receiver);
        emit(state.copyWith(currentCall: callModel));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_StartGroupVideoCalling>((event, emit) async {
      try {
        emit(state.copyWith(currentCall: null));
        final response = await CallingService.groupVideoCall(
            chatId: event.chatId,
            groupName: event.groupName,
            image: event.image,
            participants: event.participants);
        final convert =
            await CallingService.convertCallModel(callData: response.map!);
        emit(state.copyWith(currentCall: convert));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_StartGroupVoiceCalling>((event, emit) async {
      try {
        emit(state.copyWith(currentCall: null));
        final response = await CallingService.groupCall(
            chatId: event.chatId,
            groupName: event.groupName,
            image: event.image,
            participants: event.participants);
        final convert =
            await CallingService.convertCallModel(callData: response.map!);
        emit(state.copyWith(currentCall: convert));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_EndNormalCall>((event, emit) async {
      try {
        final call = state.currentCall;
        log(call.toString());
        emit(state.copyWith(currentCall: null));
        await CallingService.callEnd(call!);
        final calls = await CallingService.callHistory();
        emit(state.copyWith(callHistory: calls));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_EndGroupCall>((event, emit) async {
      try {
        final call = state.currentCall;
        emit(state.copyWith(currentCall: null));
        await CallingService.endGroupCall(call!);
        final calls = await CallingService.callHistory();
        emit(state.copyWith(callHistory: calls));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_SetCurrentCall>((event, emit) async {
      emit(state.copyWith(currentCall: event.callModel));
    });
    on<_SelectCallModel>((event, emit) async {
      try {
        emit(state.copyWith(
            selectedCall: null,
            selectedCallUsers: [],
            selectedCallHistory: []));
        final users = await CallingService.participantMembers(event.callModel);
        emit(state.copyWith(
            selectedCall: event.callModel, selectedCallUsers: users));
        final callHistory = await CallingService.callHistory();
        emit(state.copyWith(selectedCallHistory: callHistory));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_PickUpReceiverNormalCall>((event, emit) async {
      try {
        await CallingService.pickUpReceiverNormalCall(event.callId);
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_UpdateAgoraId>((event, emit) async {
      try {
        final myId = FirebaseAuth.instance.currentUser!.uid;
        await FirebaseFirestore.instance
            .collection("calls")
            .doc(state.currentCall?.historyId)
            .update({
          "agoraIds.${event.id}": myId,
        });
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    //call config
    on<_AddRemoteUser>((event, emit) async {
      try {
        emit(state.copyWith(remoteUsers: [
          ...state.remoteUsers,
          RemoteUserModel(uid: event.remoteUid, localUid: event.localUid)
        ]));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_RemoveRemoteUser>((event, emit) async {
      try {
        List<RemoteUserModel> list = List.from(state.remoteUsers)
          ..removeWhere((element) => element.uid == event.remoteUid);
        emit(state.copyWith(remoteUsers: list));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_OnUserMuteVideo>((event, emit) async {
      try {
        List<RemoteUserModel> list = List.from(state.remoteUsers);
        for (var i = 0; i < list.length; i++) {
          if (list[i].uid == event.remoteUid) {
            list[i] = list[i].copyWith(isVideoMuted: event.muted);
          }
        }
        emit(state.copyWith(remoteUsers: list));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_OnUserMuteAudio>((event, emit) async {
      try {
        List<RemoteUserModel> list = List.from(state.remoteUsers);
        for (var i = 0; i < list.length; i++) {
          if (list[i].uid == event.remoteUid) {
            list[i] = list[i].copyWith(isAudioMuted: event.muted);
          }
        }
        emit(state.copyWith(remoteUsers: list));
      } on AppException catch (e) {
        emit(state.copyWith(errorMsg: e));
      } catch (e) {
        emit(state.copyWith(
            errorMsg:
                UnknownException(details: "Error Calling: ${e.toString()}")));
      }
    });
    on<_OnLocalUserJoined>((event, emit) async {
      emit(state.copyWith(localUserJoined: true));
    });
    on<_OnLeave>((event, emit) async {
      emit(state.copyWith(localUserJoined: false, remoteUsers: []));
    });

    on<_ClearCurrentCall>((event, emit) async {
      emit(state.copyWith(
          localUserJoined: false, remoteUsers: [], currentCall: null));
    });
    on<_ClearErrorMessage>((event, emit) async {
      emit(state.copyWith(errorMsg: null));
    });
  }
}
