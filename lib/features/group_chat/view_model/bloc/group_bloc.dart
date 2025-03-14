import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/group_chat/services/group_service.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_event.dart';
part 'group_state.dart';
part 'group_bloc.freezed.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(GroupData()) {
    on<_LoadData>((event, emit) async {
      try {
        log(event.chat["chat"].toString());
        final allChats =
            GroupService.getAllChats((event.chat["chat"] as ChatModel));
        emit(
          GroupState.groupData(
            groupData: (event.chat["chat"] as ChatModel),
            messageData: allChats,
          ),
        );
        final allMembers = await GroupService.getAllUsers(
            (event.chat["chat"] as ChatModel).participants);
        emit(
          (state as GroupData).copyWith(
            groupMembers: allMembers,
          ),
        );
      } catch (e) {
        log(e.toString());
      }
    });
    on<_SendMessage>((event, emit) {
      if (event.message.isEmpty) return;
      GroupService.sendMessage((state as GroupData).groupData!, event.message);
    });
    on<_SendImage>((event, emit) {
      if (event.path.isEmpty) return;
      GroupService.sendImage((state as GroupData).groupData!, event.path);
    });
    on<_AddReaction>((event, emit) {
      if (event.emoji.isEmpty) return;
      GroupService.addReaction(
          (state as GroupData).groupData!, event.messageId, event.emoji);
    });
    on<_SendAudioFile>((event, emit) async {
      if (event.waveList.isEmpty) return;
      final wave = event.waveList;
      await GroupService.sendAudioFile(
          (state as GroupData).groupData!, event.file, wave.toList());
    });
    on<_SendVideoFile>((event, emit) async {
      GroupService.sendVideo((state as GroupData).groupData!, event.path);
    });
    on<_SendLink>((event, emit) {
      GroupService.sendLink((state as GroupData).groupData!, event.link);
    });
    on<_SendDocument>((event, emit) {
      GroupService.sendDocument((state as GroupData).groupData!, event.path);
    });
    on<_CreatePoll>((event, emit) {
      if (state is GroupData) {
        GroupService.sendPoll(
            (state as GroupData).groupData!, event.question, event.options);
      }
    });
    on<_VotePoll>((event, emit) {
      GroupService.votePoll((state as GroupData).groupData!, event.messageId,
          event.option, event.votes);
    });
    on<_DeleteMessage>((event, emit) {
      GroupService.deleteMessage(
          (state as GroupData).groupData!, event.messageId);
    });
    on<_EditStatusToTyping>((event, emit) {
      // GroupService.setUserStatus((state as GroupData).groupData!, event.isTyping);
    });
    on<_SendSticker>((event, emit) {
      GroupService.sendSticker(
          (state as GroupData).groupData!, event.stickerPath);
    });
    on<_ExitGroup>((event, emit) {
      GroupService.exitGroup((state as GroupData).groupData!);
    });
    //createMessage
    on<_CreateGroupLoad>((event, emit) async {
      final List<UserModels> contacts = await GroupService.getContacts();
      emit(
        GroupState.createGroupData(
          groupDescription: event.groupDescription,
          groupImagePath: event.groupImagePath,
          groupName: event.groupName,
          memberCanAddMember: event.memberCanAddMember,
          memberCanEdit: event.memberCanEdit,
          memberCanMessage: event.memberCanMessage,
          contacts: contacts,
        ),
      );
    });
    on<_AddMember>((event, emit) {
      if (state is GroupData) {
        final groupState = state as GroupData;
        GroupService.addMembers(
            chatId: groupState.groupData!.chatId,
            participantsIds: event.members);
      }
    });
    on<_CreateGroup>((event, emit) {
      if (state is _CreateGroupData) {
        final groupState = state as _CreateGroupData;
        GroupService.createGroup(
            groupName: groupState.groupName,
            groupDescription: groupState.groupDescription,
            groupImagePath: groupState.groupImagePath,
            memberCanEdit: groupState.memberCanEdit,
            memberCanAddMember: groupState.memberCanAddMember,
            memberCanMessage: groupState.memberCanMessage,
            participantsIds: event.participants);
      }
    });
  }
}
