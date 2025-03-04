import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://randomuser.me/api/portraits/men/10.jpg"),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Container(
              width: size.width * 0.4,
              height: size.width * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://randomuser.me/api/portraits/men/16.jpg"),
                    fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => context.pop(),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.mic,
                      size: 25,
                    ),
                  ),
                ),
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
                InkWell(
                  onTap: () => context.pop(),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
