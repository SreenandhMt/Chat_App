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
    on<_getAllData>((event, emit) async {
      final response = HomeService.getChatStream();
      emit(HomeState.loadedData(chatsStream: response));
    });

    on<_LoadUserData>((event, emit) async {
      final box = Hive.box("chatsCount");
      final chatModels = event.docs.map(
        (e) {
          return ChatModel.fromJson(e.data(), box.get(e.data()["chatId"]));
        },
      ).toList();
      final response = await HomeService.getChats(chatModels);
      emit(state.copyWith(chatsModels: response));
    });
  }
}
