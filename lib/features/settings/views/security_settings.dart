import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height10,
          if (isAppLockDone) ...[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.verified_user),
              ),
              title: const Text(
                'Change App Lock',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                NavigationUtils.securityPinPage(context);
              },
            ),
            height20,
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 10, left: 5),
                child: Icon(Icons.close),
              ),
              title: const Text(
                'Tern OFF',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                isAppLockDone = false;
                setState(() {});
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                isAppLockDone = true;
                NavigationUtils.securityPinPage(context);
              },
            ),
          ],
          height20,
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right: 10, left: 5),
              child: Icon(Icons.verified_user),
            ),
            title: const Text(
              'Two-stop verification',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            trailing: Switch(
              value: isActive,
              onChanged: (value) {
                isActive = !isActive;
                setState(() {});
              },
            ),
            onTap: () {
              isActive = !isActive;
              setState(() {});
            },
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.grey(context),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2FA Code",
                    style: AppFonts.titleFont(context),
                  ),
                  height10,
                  SelectableText("BHJNNDHJCNSHBHBCHDBCHDBCGD"),
                ],
              ),
            )
        ],
      ),
    );
  }
}
