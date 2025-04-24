import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_app/core/exceptions.dart';
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
      try {
        emit(_ChatData(isLoading: true));
        final box = Hive.box("chatsCount");
        final chatModel = event.chatData;
        final allChats = ChatServices.getAllChats(chatModel);
        final user = event.chatData.userModel;
        if (user == null) {
          emit(state.copyWith(
              isError: UnknownException(details: "No your found")));
          return;
        }
        await box.put(chatModel.chatId, chatModel.messageCount);
        final index = SettingService.getWallpaper();
        bool status = false;
        final granted = await FlutterContacts.requestPermission();
        if (granted) {
          status = await FlutterContacts.getContact(user.uid) != null;
        }
        emit(
          state.copyWith(
            messageData: allChats,
            chatData: event.chatData,
            isSavedContact: status,
            wallpaperIndex: index,
            messages: {},
          ),
        );
        await Future.delayed(Duration(milliseconds: 1000));
        emit(state.copyWith(isLoading: false));
        final commonGroups = await ChatServices.commonGroups(user.uid);
        emit(state.copyWith(commonGroups: commonGroups));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendMessage>((event, emit) {
      try {
        if (event.message.isEmpty) return;
        ChatServices.sendMessage(state.chatData!, event.message.trim());
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendImage>((event, emit) async {
      try {
        if (event.path.isEmpty) return;
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendImage(state.chatData!, event.path);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendSticker>((event, emit) async {
      try {
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendSticker(state.chatData!, event.stickerPath);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_AddReaction>((event, emit) {
      try {
        if (event.emoji.isEmpty) return;
        ChatServices.addReaction(state.chatData!, event.messageId, event.emoji);
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendAudioFile>((event, emit) async {
      try {
        if (event.waveList.isEmpty) return;
        emit(state.copyWith(inputLoading: true));
        final wave = event.waveList;
        await ChatServices.sendAudioFile(
            state.chatData!, event.file, wave.toList());
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendVideoFile>((event, emit) async {
      try {
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendVideo(state.chatData!, event.path);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendLink>((event, emit) async {
      try {
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendLink(state.chatData!, event.link);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_SendDocument>((event, emit) async {
      try {
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendDocument(state.chatData!, event.path);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_CreatePoll>((event, emit) async {
      try {
        emit(state.copyWith(inputLoading: true));
        await ChatServices.sendPoll(
            state.chatData!, event.question, event.options);
        emit(state.copyWith(inputLoading: false));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_VotePoll>((event, emit) {
      try {
        ChatServices.votePoll(
            state.chatData!, event.messageId, event.option, event.votes);
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_DeleteMessage>((event, emit) async {
      try {
        final messageIds = List<String>.from(event.messageIds);
        for (var id in messageIds) {
          await ChatServices.deleteMessage(state.chatData!, id);
        }
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_DeleteMessageForMe>((event, emit) async {
      try {
        final messageIds = List<String>.from(event.messageIds);
        for (var id in messageIds) {
          await ChatServices.deleteChatForMe(state.chatData!, id);
        }
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_EditStatusToTyping>((event, emit) {
      try {
        ChatServices.setUserStatus(state.chatData!, event.isTyping);
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_LoadMessages>((event, emit) async {
      try {
        List<MessageModel> messages = [];
        for (var doc in event.docs) {
          if (doc.data()["hidechat"] != null &&
              doc.data()["hidechat"].contains(auth.currentUser!.uid)) {
            continue;
          }
          final model = MessageModel.fromJson(doc.data());
          messages.add(model);
        }
        final chats = messages.reversed.toList();
        Map<String, List<MessageModel>> groupedChats = {};
        for (var chat in chats) {
          String category = ChatServices.categorizeChat(
              DateTime.fromMillisecondsSinceEpoch(chat.timestamp));
          if (!groupedChats.containsKey(category)) {
            groupedChats[category] = [];
          }
          groupedChats[category]!.add(chat);
        }
        final map = Map.fromEntries(groupedChats.entries.toList().reversed);
        emit(state.copyWith(messages: map));
        for (var message in messages) {
          if (!message.isSeenBy.contains(auth.currentUser!.uid)) {
            await ChatServices.markMessageAsSeen(state.chatData!, message.id);
          }
        }
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_MuteChat>((event, emit) {
      try {
        if (event.status) {
          ChatServices.muteChat(state.chatData!);
        } else {
          ChatServices.unmuteChat(state.chatData!);
        }
        final chat = state.chatData!;
        final updatedChat = chat.copyWith(muted: event.status);

        emit(state.copyWith(chatData: updatedChat));
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_BlockUser>((event, emit) {
      try {
        ChatServices.blockUser(state.chatData!, event.uid);
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });
    on<_ReportUser>((event, emit) {
      try {
        ChatServices.blockUser(state.chatData!, event.uid);
      } on AppException catch (e) {
        emit(state.copyWith(isError: e));
      } catch (e) {
        emit(state.copyWith(isError: UnknownException(details: e.toString())));
      }
    });

    on<_ClearState>((event, emit) {
      emit(_ChatData());
    });
    on<_ClearError>((event, emit) {
      emit(state.copyWith(isError: null));
    });
  }
}
