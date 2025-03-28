import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/chat_page/services/chat_services.dart';
import 'package:chat_app/features/home/models/chat_model.dart';
import 'package:chat_app/features/settings/service/setting_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(_ChatData()) {
    on<_GetMessages>((event, emit) {
      final box = Hive.box("chatsCount");
      final chatModel = (event.chatData["chat"] as ChatModel);
      final allChats = ChatServices.getAllChats(chatModel);
      box.put(chatModel.chatId, chatModel.messageCount);
      final index = SettingService.getWallpaper();
      emit(_ChatData(
          messageData: allChats,
          chatData: event.chatData,
          wallpaperIndex: index));
    });
    on<_SendMessage>((event, emit) {
      if (event.message.isEmpty) return;
      ChatServices.sendMessage(
          state.chatData!["chat"] as ChatModel, event.message);
    });
    on<_SendImage>((event, emit) {
      if (event.path.isEmpty) return;
      ChatServices.sendImage(state.chatData!["chat"], event.path);
    });
    on<_SendSticker>((event, emit) {
      ChatServices.sendSticker(state.chatData!["chat"], event.stickerPath);
    });
    on<_AddReaction>((event, emit) {
      if (event.emoji.isEmpty) return;
      ChatServices.addReaction(
          state.chatData!["chat"], event.messageId, event.emoji);
    });
    on<_SendAudioFile>((event, emit) async {
      if (event.waveList.isEmpty) return;
      final wave = event.waveList;
      await ChatServices.sendAudioFile(
          state.chatData!["chat"], event.file, wave.toList());
    });
    on<_SendVideoFile>((event, emit) async {
      await ChatServices.sendVideo(state.chatData!["chat"], event.path);
    });
    on<_SendLink>((event, emit) {
      ChatServices.sendLink(state.chatData!["chat"], event.link);
    });
    on<_SendDocument>((event, emit) {
      ChatServices.sendDocument(state.chatData!["chat"], event.path);
    });
    on<_CreatePoll>((event, emit) {
      ChatServices.sendPoll(
          state.chatData!["chat"], event.question, event.options);
    });
    on<_VotePoll>((event, emit) {
      ChatServices.votePoll(
          state.chatData!["chat"], event.messageId, event.option, event.votes);
    });
    on<_DeleteMessage>((event, emit) {
      ChatServices.deleteMessage(state.chatData!["chat"], event.messageId);
    });
    on<_EditStatusToTyping>((event, emit) {
      ChatServices.setUserStatus(state.chatData!["chat"], event.isTyping);
    });
    on<_MarkMessageAsSeen>((event, emit) {
      ChatServices.markMessageAsSeen(state.chatData!["chat"], event.messageId);
    });
  }
}
