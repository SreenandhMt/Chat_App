import 'package:chat_app/core/size.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/bloc/settings_bloc.dart';

bool isAppLockDone = false;

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Security Settings'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10,
              if (state.appLock != null) ...[
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5),
                    child: Icon(Icons.close),
                  ),
                  title: const Text(
                    'Tern OFF',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    context
                        .read<SettingsBloc>()
                        .add(SettingsEvent.deleteAppLock());
                  },
                ),
              ] else ...[
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5),
                    child: Icon(Icons.verified_user),
                  ),
                  title: const Text(
                    'Create App Lock',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                  onTap: () {
                    NavigationUtils.securityPinPage(context);
                  },
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
