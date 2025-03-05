import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.settingsText.getString(context),
        ),
      ),
      body: ListView(
        children: [
          height10,
          ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            title: Text('Profile Name'),
            subtitle: Text(LocaleData.editProfileText.getString(context)),
            onTap: () {
              NavigationUtils.profileSettings(context);
            },
          ),
          height15,
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.verified_user),
            ),
            title: Text(
              LocaleData.securityText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(LocaleData.securitySubtitleText.getString(context)),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () {
              NavigationUtils.securityPage(context);
            },
          ),
          height10,
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.notifications),
            ),
            title: Text(
              LocaleData.notificationsText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle:
                Text(LocaleData.notificationsSubtitleText.getString(context)),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () {
              NavigationUtils.notificationSetting(context);
            },
          ),
          height10,
          ListTile(
            leading: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.language)),
            title: Text(
              LocaleData.languageText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(LocaleData.languageSubtitleText.getString(context)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: TextStyle(fontSize: 16),
                ),
                width10,
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => LanguageBottomSheet());
            },
          ),
          height10,
          ListTile(
            leading: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.wallpaper)),
            title: Text(
              LocaleData.wallpaperText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Edit your chat wallpaper"),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () {
              NavigationUtils.wallpaperSetting(context);
            },
          ),
          height10,
          ListTile(
            leading: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.lock)),
            title: Text(
              LocaleData.privacyText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(LocaleData.privacySubtitleText.getString(context)),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () {
              //TODO: add website link
            },
          ),
          height10,
          ListTile(
            leading: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.info)),
            title: Text(
              LocaleData.aboutText.getString(context),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(LocaleData.aboutSubtitleText.getString(context)),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () {
              NavigationUtils.aboutUs(context);
            },
          ),
        ],
      ),
    );
  }
}

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        height30,
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Choose Language",
            style: AppFonts.titleFont(context),
          ),
        ),
        height10,
        ListTile(
          leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.language)),
          title: Text(
            'English',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.check, size: 20),
        ),
        height10,
        ListTile(
          leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.language)),
          title: Text(
            'Hindi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.check, size: 20),
        ),
        height10,
        ListTile(
          leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.language)),
          title: Text(
            'Malayalam',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.check, size: 20),
        ),
        height10,
        ListTile(
          leading: Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.language)),
          title: Text(
            'Spanish',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.check, size: 20),
        ),
        height50,
      ],
    );
  }
}
