import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/settings/models/notification_type.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../view_model/bloc/settings_bloc.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsList = [
      LocaleData.chatNotificationsText.getString(context),
      LocaleData.groupNotificationsText.getString(context),
      LocaleData.callNotificationsText.getString(context),
      LocaleData.missedCallNotificationsText.getString(context),
      LocaleData.soundText.getString(context),
      LocaleData.vibrationText.getString(context),
      LocaleData.inAppAlertsText.getString(context)
    ];
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleData.notificationSettingsText.getString(context)),
          ),
          body: ListView.builder(
            itemCount: settingsList.length,
            itemBuilder: (context, index) => Column(
              children: [
                height10,
                SwitchListTile(
                  title: Text(
                    settingsList[index],
                    style: TextStyle(fontSize: 17),
                  ),
                  value: state.notificationSetting?[index].status ?? false,
                  onChanged: (value) {
                    context.read<SettingsBloc>().add(
                          SettingsEvent.turnNotification(
                            type: NotificationType.values[index],
                            status: value,
                          ),
                        );
                  },
                ),
                height10,
              ],
            ),
          ),
        );
      },
    );
  }
}
