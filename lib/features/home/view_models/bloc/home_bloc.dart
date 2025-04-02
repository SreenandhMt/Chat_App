import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/home/services/home_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/adapters.dart';

import '../../models/chat_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(_LoadedData()) {
    final box = Hive.box("category");
    on<_getAllData>((event, emit) async {
      List<String>? list = box.get("categoryList");
      if (list == null) {
        box.put("categoryList", ["Community", "Event", "News"]);
        list = ["Community", "Event", "News"];
      }
      final response = HomeService.getChatStream();
      emit(HomeState.loadedData(chatsStream: response, categoryList: list));
    });

    on<_LoadUserData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await HomeService.getChats(event.docs);
      emit(state.copyWith(
          chatsModels: response,
          filteredChats: response,
          selectedCategory: "All",
          isLoading: false));
    });

    on<_FilterCategoryUsers>((event, emit) async {
      emit(state.copyWith(
          filteredChats: [],
          filteredChatsEmpty: false,
          selectedCategory: event.category));
      final chats = state.chatsModels;
      List<ChatModel> filteredChats = [];
      final category = event.category;
      if (category == "All") {
        emit(state.copyWith(filteredChats: chats));
        return;
      }
      if (category == "Personal") {
        filteredChats = chats.where((element) => !element.isGroup).toList();
        emit(state.copyWith(filteredChats: filteredChats));
        return;
      }
      if (category == "Group") {
        filteredChats = chats.where((element) => element.isGroup).toList();
        emit(state.copyWith(filteredChats: filteredChats));
        return;
      }
      final chatIds = box.get(category);
      if (chatIds == null)
        return emit(state.copyWith(filteredChatsEmpty: true));
      for (var id in chatIds) {
        final chat = chats.where((element) => element.chatId == id);
        if (chat.isNotEmpty) {
          filteredChats.add(chat.first);
        }
      }
      emit(state.copyWith(filteredChats: filteredChats));
    });
  }
}
