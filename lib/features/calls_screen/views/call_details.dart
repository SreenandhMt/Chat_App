import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class CallDetailsPage extends StatelessWidget {
  const CallDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleData.callDetailsText.getString(context)),
        ),
        body: Column(
          children: [
            height10,
            Row(
              children: [
                width20,
                CircleAvatar(
                  radius: 30,
                ),
                width10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Paul",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text("Online"),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.call),
                ),
                width10,
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.videocam_outlined),
                ),
                width5
              ],
            ),
            height10,
            Divider(),
            ListTile(
              leading: Icon(Icons.call_made_outlined, color: Colors.green),
              title: Text(
                "Outgoing",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                children: [
                  Text("8 August, 8:14 pm"),
                ],
              ),
              trailing: Text(
                "1:32m",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            TabBar(
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Text(
                    LocaleData.participantsText.getString(context),
                    style: TextStyle(),
                  ),
                ),
                Tab(
                  child: Text(
                    LocaleData.recordingText.getString(context),
                    style: TextStyle(),
                  ),
                ),
                Tab(
                  child: Text(
                    LocaleData.historyText.getString(context),
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                ListView(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.all(3),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                        ),
                        title: Text(
                          "John paul",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text("8 August, 8:14 pm"),
                        trailing: Text(
                          "0s",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text(
                        "Record1200045",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text("8 August, 8:14 pm"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.play_arrow_outlined,
                              color: AppColors.primary(context)),
                          width10,
                          Icon(Icons.file_download_outlined,
                              color: AppColors.primary(context)),
                        ],
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      leading:
                          Icon(Icons.call_made_outlined, color: Colors.green),
                      title: Text(
                        "Outgoing",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Text("8 August, 8:14 pm"),
                        ],
                      ),
                      trailing: Text(
                        "1:32m",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.call_received, color: Colors.green),
                      title: Text(
                        "Incoming",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Text("8 August, 8:14 pm"),
                        ],
                      ),
                      trailing: Text(
                        "1:32m",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.call_missed, color: Colors.red),
                      title: Text(
                        "Missed Call",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                      subtitle: Row(
                        children: [
                          Text("8 August, 8:14 pm"),
                        ],
                      ),
                      trailing: Text(
                        "---",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
