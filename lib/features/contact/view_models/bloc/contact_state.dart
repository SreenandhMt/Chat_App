part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.contactData({
    @Default([]) List<Contact> contacts,
    @Default([]) List<UserModels> registeredContacts,
    @Default([]) List<String> selectedContacts,
    @Default([]) List<String> alreadyJoinedUsers,
    @Default(false) bool isLoading,
  }) = _ContactData;
}
