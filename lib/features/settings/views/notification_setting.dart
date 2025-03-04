import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleData.notificationSettingsText.getString(context)),
      ),
      body: ListView(
        children: [
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.chatNotificationsText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.groupNotificationsText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.callNotificationsText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.missedCallNotificationsText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.soundText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
            title: Text(
              LocaleData.vibrationText.getString(context),
              style: TextStyle(fontSize: 17),
            ),
            value: false,
            onChanged: (value) {},
          ),
          height10,
          SwitchListTile(
              title: Text(
                LocaleData.inAppAlertsText.getString(context),
                style: TextStyle(fontSize: 17),
              ),
              value: false,
              onChanged: (value) => {}),
        ],
      ),
    );
  }
}
