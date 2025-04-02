import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/contact/services/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/models/chat_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(_ContactData()) {
    on<_loadContacts>((event, emit) async {
      final response = await ContactService.getSavedContactsInApp();
      final allContacts = await ContactService.getAllContact();
      emit(state.copyWith(registeredContacts: response, contacts: allContacts));
    });
    on<_loadContactFormApp>((event, emit) async {
      final response = await ContactService.getContactsFromFirebase();
      if (state.alreadyJoinedUsers.isNotEmpty) {
        for (var element in state.alreadyJoinedUsers) {
          response.removeWhere((e) => e.uid == element);
        }
      }
      emit(state.copyWith(registeredContacts: response));
    });
    on<_AddMembersList>((event, emit) {
      final updatedContacts = List<String>.from(state.selectedContacts)
        ..add(event.id);
      emit(state.copyWith(
          selectedContacts: updatedContacts,
          selectedContactModels: [
            ...state.selectedContactModels,
            event.model
          ]));
    });
    on<_RemoveMembersList>((event, emit) {
      final updatedContacts = List<String>.from(state.selectedContacts)
        ..remove(event.id);
      final models = List<UserModels>.from(state.selectedContactModels)
        ..where((element) => element.uid != event.id).toList();
      emit(state.copyWith(
        selectedContacts: updatedContacts,
        selectedContactModels: models,
      ));
    });
    on<_AddGroupMemberList>((event, emit) {
      emit(state.copyWith(alreadyJoinedUsers: event.members));
    });
    on<_CreateChat>((event, emit) async {
      final chatModel = await ContactService.checkChatExist(event.uid);
      final checkUserBlocked =
          await ContactService.checkBlockedMembers(event.uid);
      if (chatModel == null) {
        ContactService.createChat(
            [event.uid, FirebaseAuth.instance.currentUser!.uid]);
        emit(state.copyWith(showMessage: "New chat created"));
      } else {
        if (checkUserBlocked) {
          await ContactService.unblockAndJoin(chatModel.chatId, event.uid);
          emit(state.copyWith(showMessage: "The user unblocked"));
          return;
        } else {
          emit(state.copyWith(showMessage: "The chat already exist"));
        }
      }
    });
    on<_ClearMessage>((event, emit) {
      emit(state.copyWith(showMessage: null));
    });
  }
}
