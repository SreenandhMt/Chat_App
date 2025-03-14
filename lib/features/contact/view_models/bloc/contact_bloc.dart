import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/contact/services/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      ));
    });
    on<_RemoveMembersList>((event, emit) {
      final updatedContacts = List<String>.from(state.selectedContacts)
        ..remove(event.id);
      emit(state.copyWith(
        selectedContacts: updatedContacts,
      ));
    });
    on<_AddGroupMemberList>((event, emit) {
      emit(state.copyWith(alreadyJoinedUsers: event.members));
    });
  }
}
