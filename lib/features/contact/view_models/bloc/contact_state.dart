part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.contactData({
    @Default([]) List<Contact> contacts,
    @Default([]) List<UserModels> registeredContacts,
    @Default([]) List<String> selectedContacts,
    @Default([]) List<UserModels> selectedContactModels,
    @Default([]) List<String> alreadyJoinedUsers,
    @Default(false) bool isLoading,
    @Default(null) ChatModel? chatModel,
    @Default(null) String? showMessage,
  }) = _ContactData;
}
