import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../components/status/status_ring.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleData.statusText.getString(context),
            style: AppFonts.appBarStyle(context),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: StatusRing(
                gapSize: 0,
                progress: 1.0,
                segments: 0,
                color: Colors.blueGrey,
                image: "",
              ),
              title: Text(LocaleData.myStatusText.getString(context)),
              subtitle:
                  Text(LocaleData.myStatusSubtitleText.getString(context)),
              onTap: () {},
            ),
            height10,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                LocaleData.resetStatusText.getString(context),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: StatusRing(
                    gapSize: 0.3,
                    progress: 1.0,
                    segments: 4,
                    color: Colors.green,
                    image: "https://randomuser.me/api/portraits/men/$index.jpg",
                  ),
                  title: Text("Shekuni Mama"),
                  subtitle: Text("Today 4:37 pm"),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                LocaleData.viewedStatusText.getString(context),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: StatusRing(
                    gapSize: 0.3,
                    progress: 1.0,
                    segments: 4,
                    image:
                        "https://randomuser.me/api/portraits/men/${index + 5}.jpg",
                    color: Colors.grey,
                  ),
                  title: Text("Shekuni Mama"),
                  subtitle: Text("Today 4:37 pm"),
                  onTap: () {},
                ),
              ),
            )
          ],
        ));
  }
}
