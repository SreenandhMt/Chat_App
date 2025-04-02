import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/chat_page/services/chat_services.dart';
import 'package:chat_app/features/group_chat/services/group_service.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../settings/service/setting_service.dart';

part 'group_event.dart';
part 'group_state.dart';
part 'group_bloc.freezed.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(GroupData()) {
    on<_LoadData>((event, emit) => _loadData(event, emit, state));
    on<_LoadGroupInfo>((event, emit) => loadGroupInfo(event, emit, state));
    on<_KickUser>((event, emit) async {
      await GroupService.kickUser((state as GroupData).groupData!, event.uid,
          (state as GroupData).allGroupMembers[event.uid]?.name ?? "");
      await _reloadGroup(emit, state);
    });
    on<_BlockUser>((event, emit) async {
      await GroupService.blockUser((state as GroupData).groupData!, event.uid,
          (state as GroupData).allGroupMembers[event.uid]?.name ?? "");
      await _reloadGroup(emit, state);
    });
    on<_DeleteGroup>((event, emit) {
      GroupService.deleteGroup((state as GroupData).groupData!);
    });
    on<_DeleteChatForMe>((event, emit) async {
      try {
        for (var id in event.messageIds) {
          await GroupService.deleteChatForMe(
              (state as GroupData).groupData!, id);
        }
      } catch (e) {
        log(e.toString());
      }
    });
    on<_MakeAdmin>((event, emit) async {
      await GroupService.makeAdmin((state as GroupData).groupData!, event.uid);
      await _reloadGroup(emit, state);
    });
    on<_RemoveAdmin>((event, emit) async {
      await GroupService.removeAdmin(
          (state as GroupData).groupData!, event.uid);
      await _reloadGroup(emit, state);
    });
    on<_EditPermission>((event, emit) async {
      if (event.memberCanAddMember != null) {
        emit((state as GroupData).copyWith(
            groupData: (state as GroupData).groupData?.copyWith(
                  memberCanAddMember: () => event.memberCanAddMember,
                )));
      }
      if (event.memberCanEdit != null) {
        emit((state as GroupData).copyWith(
            groupData: (state as GroupData).groupData?.copyWith(
                  memberCanEdit: () => event.memberCanEdit,
                )));
      }
      if (event.memberCanMessage != null) {
        emit((state as GroupData).copyWith(
            groupData: (state as GroupData).groupData?.copyWith(
                  memberCanMessage: () => event.memberCanMessage,
                )));
      }
      await GroupService.editPermission(
          (state as GroupData).groupData!,
          event.memberCanAddMember,
          event.memberCanEdit,
          event.memberCanMessage);
    });

    //send message
    on<_SendMessage>((event, emit) async {
      if (event.message.isEmpty) return;
      emit((state as GroupData).copyWith(inputLoading: true));
      await GroupService.sendMessage(
          (state as GroupData).groupData!, event.message);
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_SendImage>((event, emit) async {
      if (event.path.isEmpty) return;
      emit((state as GroupData).copyWith(inputLoading: true));
      await GroupService.sendImage((state as GroupData).groupData!, event.path);
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_AddReaction>((event, emit) {
      if (event.emoji.isEmpty) return;
      GroupService.addReaction(
          (state as GroupData).groupData!, event.messageId, event.emoji);
    });
    on<_SendAudioFile>((event, emit) async {
      if (event.waveList.isEmpty) return;
      emit((state as GroupData).copyWith(inputLoading: true));
      final wave = event.waveList;
      await GroupService.sendAudioFile(
          (state as GroupData).groupData!, event.file, wave.toList());
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_SendVideoFile>((event, emit) async {
      emit((state as GroupData).copyWith(inputLoading: true));
      await GroupService.sendVideo((state as GroupData).groupData!, event.path);
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_SendLink>((event, emit) async {
      emit((state as GroupData).copyWith(inputLoading: true));
      await GroupService.sendLink((state as GroupData).groupData!, event.link);
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_SendDocument>((event, emit) async {
      emit((state as GroupData).copyWith(inputLoading: true));
      await GroupService.sendDocument(
          (state as GroupData).groupData!, event.path);
      emit((state as GroupData).copyWith(inputLoading: false));
    });
    on<_CreatePoll>((event, emit) async {
      if (state is GroupData) {
        emit((state as GroupData).copyWith(inputLoading: true));
        await GroupService.sendPoll(
            (state as GroupData).groupData!, event.question, event.options);
        emit((state as GroupData).copyWith(inputLoading: false));
      }
    });
    on<_VotePoll>((event, emit) {
      GroupService.votePoll((state as GroupData).groupData!, event.messageId,
          event.option, event.votes);
    });
    on<_DeleteMessage>((event, emit) async {
      final messageIds = List<String>.from(event.messageId);
      for (var id in messageIds) {
        await GroupService.deleteMessage((state as GroupData).groupData!, id);
      }
    });

    on<_LoadMessageModel>((event, emit) async {
      List<MessageModel> messages = [];
      for (var doc in event.docs) {
        if (doc.data()["hidechat"] != null &&
            doc.data()["hidechat"].contains(auth.currentUser!.uid)) {
          continue;
        }
        final model = MessageModel.fromJson(doc.data());
        messages.add(model);
      }
      emit((state as GroupData).copyWith(messages: messages));
      for (var message in messages) {
        if (!message.isSeenBy.contains(auth.currentUser!.uid)) {
          await ChatServices.markMessageAsSeen(
              (state as GroupData).groupData!, message.id);
        }
      }
    });

    on<_MuteNotification>((event, emit) async {
      emit((state as GroupData).copyWith(
          groupData: (state as GroupData).groupData?.copyWith(
                muted: true,
              )));
      await GroupService.muteChat((state as GroupData).groupData!);
    });

    on<_UnmuteNotification>((event, emit) async {
      emit((state as GroupData).copyWith(
          groupData: (state as GroupData).groupData?.copyWith(
                muted: false,
              )));
      await GroupService.unmuteChat((state as GroupData).groupData!);
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
    on<_CreateGroupLoad>((event, emit) => _loadGroupData(event, emit, state));
    on<_AddMember>((event, emit) => _addMember(event, emit, state));
    on<_CreateGroup>((event, emit) => _createGroup(event, emit, state));
  }
}

void _loadData(event, emit, state) async {
  try {
    emit(
      GroupState.groupData(
        isLoading: true,
      ),
    );
    final chatModel = event.chat;
    if (chatModel == null) return;
    final box = Hive.box("chatsCount");
    final allChats = GroupService.getAllChats(chatModel);
    box.put(chatModel.chatId, chatModel.messageCount);
    final index = SettingService.getWallpaper();
    final allMembers = await GroupService.getAllUsers(chatModel.membersHistory);
    emit(
      state.copyWith(
        groupData: chatModel,
        messageData: allChats,
        allGroupMembers: allMembers,
        wallpaperIndex: index,
        isLoading: false,
      ),
    );
  } catch (e) {
    log(e.toString());
  }
}

void loadGroupInfo(event, emit, GroupState state) async {
  if (state is GroupData) {
    final currentMembers =
        await GroupService.getAllUsers(state.groupData!.participants);
    final blockedMembers =
        await GroupService.getAllUsers(state.groupData!.blockedGroupMembers);
    emit(
      state.copyWith(
        groupMembers: currentMembers,
        blockedGroupMembers: blockedMembers,
      ),
    );
  }
}

void _addMember(_AddMember event, emit, state) async {
  if (state is GroupData) {
    final groupState = state;
    await GroupService.addMembers(
        chatModel: groupState.groupData!, participants: event.members);
    await _reloadGroup(emit, state);
  }
}

Future<void> _reloadGroup(emit, state) async {
  final groupData =
      await GroupService.reloadGroupData((state as GroupData).groupData!);
  final members = await GroupService.getAllUsers(groupData.participants);
  emit(
    (state).copyWith(
      groupData: groupData,
      groupMembers: members,
    ),
  );
}

void _loadGroupData(_CreateGroupLoad event, emit, GroupState state) async {
  final List<UserModels> contacts = await GroupService.getContacts();
  emit(
    GroupState.createGroupData(
      groupDescription: "",
      groupImagePath: event.groupImagePath,
      groupName: event.groupName,
      memberCanAddMember: event.memberCanAddMember,
      memberCanEdit: event.memberCanEdit,
      memberCanMessage: event.memberCanMessage,
      contacts: contacts,
    ),
  );
}

void _createGroup(_CreateGroup event, emit, GroupState state) async {
  if (state is _CreateGroupData) {
    GroupService.createGroup(
      groupName: state.groupName,
      groupDescription: state.groupDescription,
      groupImagePath: state.groupImagePath,
      memberCanAddMember: state.memberCanAddMember,
      memberCanEdit: state.memberCanEdit,
      memberCanMessage: state.memberCanMessage,
      participantsIds: event.participants,
    );
  }
}
