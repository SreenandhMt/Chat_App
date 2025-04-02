import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/contact/view_models/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class InviteSavedContacts extends StatefulWidget {
  const InviteSavedContacts({super.key});

  @override
  State<InviteSavedContacts> createState() => _InviteSavedContactsState();
}

class _InviteSavedContactsState extends State<InviteSavedContacts> {
  String message = "";
  Future<void> getContacts() async {
    if (!await FlutterContacts.requestPermission()) {
      return; // Return empty list if permission is denied
    }
    return;
  }

  @override
  void initState() {
    getContacts();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) =>
          context.read<ContactBloc>().add(ContactEvent.loadContacts()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {
          if (state.showMessage != null) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.showMessage!)));
            context.read<ContactBloc>().add(ContactEvent.clearMessage());
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              if (state.registeredContacts.isNotEmpty)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Contact on ComptChat",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ...List.generate(
                state.registeredContacts.length,
                (index) {
                  UserModels contact = state.registeredContacts[index];
                  return ListTile(
                    onTap: () {
                      context
                          .read<ContactBloc>()
                          .add(ContactEvent.createChat(uid: contact.uid));
                    },
                    leading: contact.imageUrl == null
                        ? const CircleAvatar(
                            child: Icon(Icons.person),
                          )
                        : CircleAvatar(
                            backgroundImage: NetworkImage(contact.imageUrl!),
                          ),
                    title: Text(contact.name),
                    subtitle: Text(contact.phoneNumber),
                  );
                },
              ),
              if (state.contacts.isNotEmpty)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Invite",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ...List.generate(
                state.contacts.length,
                (index) {
                  Contact contact = state.contacts[index];
                  return ListTile(
                    leading: contact.photo == null
                        ? const CircleAvatar(
                            child: Icon(Icons.person),
                          )
                        : CircleAvatar(
                            backgroundImage: MemoryImage(contact.photo!),
                          ),
                    title: Text(contact.displayName),
                    subtitle: Text(contact.phones.isNotEmpty
                        ? contact.phones.first.number
                        : "No number"),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
