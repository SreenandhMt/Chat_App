part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.loadContacts() = _loadContacts;
  const factory ContactEvent.loadContactFormApp() = _loadContactFormApp;
  const factory ContactEvent.addGroupMemberList(
      {required List<String> members}) = _AddGroupMemberList;
  const factory ContactEvent.addMembersList(
      {required String id, required UserModels model}) = _AddMembersList;
  const factory ContactEvent.removeMembersList(
      {required String id, required UserModels model}) = _RemoveMembersList;
  const factory ContactEvent.createChat({required String uid}) = _CreateChat;
  const factory ContactEvent.clearMessage() = _ClearMessage;
}
