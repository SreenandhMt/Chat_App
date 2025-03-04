import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class CallLogsScreen extends StatelessWidget {
  const CallLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleData.callsText.getString(context)),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: ListTile(
            onTap: () => NavigationUtils.callDetailsPage(context),
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text(
              "John paul",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: index == 4 ? Colors.red : null),
            ),
            subtitle: Row(
              children: [
                index == 4
                    ? Icon(Icons.call_missed, color: Colors.red)
                    : index == 6
                        ? Icon(Icons.call_received_rounded, color: Colors.green)
                        : Icon(Icons.call_made_outlined, color: Colors.green),
                Text("8 August, 8:14 pm"),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
        ),
      ),
    );
  }
}
