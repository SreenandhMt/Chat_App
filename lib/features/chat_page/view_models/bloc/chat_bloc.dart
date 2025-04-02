import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:chat_app/features/chat_page/services/chat_services.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:chat_app/features/settings/service/setting_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  ChatBloc() : super(_ChatData()) {
    on<_GetMessages>((event, emit) async {
      final box = Hive.box("chatsCount");
      final chatModel = event.chatData;
      final allChats = ChatServices.getAllChats(chatModel);
      final user = event.chatData.userModel!;
      box.put(chatModel.chatId, chatModel.messageCount);
      final index = SettingService.getWallpaper();
      final status = await FlutterContacts.getContact(user.uid) == null;
      emit(_ChatData(
          messageData: allChats,
          chatData: event.chatData,
          isSavedContact: status,
          wallpaperIndex: index));
      final commonGroups = await ChatServices.commonGroups(user.uid);
      log(commonGroups.toString());
      emit(state.copyWith(commonGroups: commonGroups));
    });
    on<_SendMessage>((event, emit) {
      if (event.message.isEmpty) return;
      ChatServices.sendMessage(state.chatData!, event.message.trim());
    });
    on<_SendImage>((event, emit) async {
      if (event.path.isEmpty) return;
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendImage(state.chatData!, event.path);
      emit(state.copyWith(inputLoading: false));
    });
    on<_SendSticker>((event, emit) async {
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendSticker(state.chatData!, event.stickerPath);
      emit(state.copyWith(inputLoading: false));
    });
    on<_AddReaction>((event, emit) {
      if (event.emoji.isEmpty) return;
      ChatServices.addReaction(state.chatData!, event.messageId, event.emoji);
    });
    on<_SendAudioFile>((event, emit) async {
      if (event.waveList.isEmpty) return;
      emit(state.copyWith(inputLoading: true));
      final wave = event.waveList;
      await ChatServices.sendAudioFile(
          state.chatData!, event.file, wave.toList());
      emit(state.copyWith(inputLoading: false));
    });
    on<_SendVideoFile>((event, emit) async {
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendVideo(state.chatData!, event.path);
      emit(state.copyWith(inputLoading: false));
    });
    on<_SendLink>((event, emit) async {
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendLink(state.chatData!, event.link);
      emit(state.copyWith(inputLoading: false));
    });
    on<_SendDocument>((event, emit) async {
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendDocument(state.chatData!, event.path);
      emit(state.copyWith(inputLoading: false));
    });
    on<_CreatePoll>((event, emit) async {
      emit(state.copyWith(inputLoading: true));
      await ChatServices.sendPoll(
          state.chatData!, event.question, event.options);
      emit(state.copyWith(inputLoading: false));
    });
    on<_VotePoll>((event, emit) {
      ChatServices.votePoll(
          state.chatData!, event.messageId, event.option, event.votes);
    });
    on<_DeleteMessage>((event, emit) async {
      final messageIds = List<String>.from(event.messageIds);
      for (var id in messageIds) {
        await ChatServices.deleteMessage(state.chatData!, id);
      }
    });
    on<_DeleteMessageForMe>((event, emit) async {
      final messageIds = List<String>.from(event.messageIds);
      for (var id in messageIds) {
        await ChatServices.deleteChatForMe(state.chatData!, id);
      }
    });
    on<_EditStatusToTyping>((event, emit) {
      ChatServices.setUserStatus(state.chatData!, event.isTyping);
    });
    on<_LoadMessages>((event, emit) async {
      List<MessageModel> messages = [];
      for (var doc in event.docs) {
        if (doc.data()["hidechat"] != null &&
            doc.data()["hidechat"].contains(auth.currentUser!.uid)) {
          continue;
        }
        final model = MessageModel.fromJson(doc.data());
        messages.add(model);
      }
      emit(state.copyWith(messages: messages));
      for (var message in messages) {
        if (!message.isSeenBy.contains(auth.currentUser!.uid)) {
          await ChatServices.markMessageAsSeen(state.chatData!, message.id);
        }
      }
    });
    on<_MuteChat>((event, emit) {
      if (event.status) {
        ChatServices.muteChat(state.chatData!);
      } else {
        ChatServices.unmuteChat(state.chatData!);
      }
      final chat = state.chatData!;
      final updatedChat = chat.copyWith(muted: event.status);

      emit(state.copyWith(chatData: updatedChat));
    });
    on<_BlockUser>((event, emit) {
      ChatServices.blockUser(state.chatData!, event.uid);
    });
    on<_ReportUser>((event, emit) {
      ChatServices.blockUser(state.chatData!, event.uid);
    });
  }
}
