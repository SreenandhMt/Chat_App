import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VoiceCallPage extends StatelessWidget {
  const VoiceCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("George Allen", style: AppFonts.titleFont(context)),
              height5,
              Text("00:31s"),
              height20,
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/1.jpg"),
                radius: 50,
              )
            ],
          ),
          SizedBox.shrink(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => context.pop(),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end_rounded,
                    size: 25,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
