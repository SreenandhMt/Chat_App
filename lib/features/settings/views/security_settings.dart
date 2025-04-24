import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/settings/service/setting_service.dart';
import 'package:chat_app/route/auth_checker.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 5),
                  child: Icon(Icons.verified_user),
                ),
                title: Text(
                  'App Lock (${state.appLock == null ? "Turn ON" : "Turn OFF"})',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  if (state.appLock != null) {
                    context
                        .read<SettingsBloc>()
                        .add(SettingsEvent.deleteAppLock());
                    return;
                  }
                  NavigationUtils.securityPinPage(context);
                },
              ),
              height10,
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 5),
                  child: Icon(Icons.logout, color: Colors.red),
                ),
                title: const Text(
                  'SignOut',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
                onTap: () async {
                  SettingService.deleteAppLock();
                  await FirebaseAuth.instance.signOut();
                  AuthChecker.checkAuth(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
