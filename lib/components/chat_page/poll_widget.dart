import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';

class PollWidget extends StatefulWidget {
  const PollWidget({
    super.key,
    required this.isSender,
    this.isGroup = false,
  });
  final bool isSender;
  final bool isGroup;
  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {
  final List<String> imageUrls = [
    'https://randomuser.me/api/portraits/men/1.jpg',
    'https://randomuser.me/api/portraits/men/2.jpg',
    'https://randomuser.me/api/portraits/women/1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(17),
      ),
      constraints: BoxConstraints(
        minHeight: 65,
        maxWidth: size.width * 0.79,
        minWidth: size.width * 0.3,
      ),
      margin: widget.isGroup ? null : EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 1),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      "How do you prefer to shop?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  PollItem(imageUrls: imageUrls),
                  PollItem(imageUrls: imageUrls),
                  PollItem(imageUrls: imageUrls),
                  height10,
                  Divider(),
                  height10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                            color: AppColors.secondary(context), fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 5,
              children: [
                if (widget.isSender)
                  Icon(
                    Icons.check,
                    size: 13,
                    color: Colors.blue,
                  ),
                Text(
                  "10:00 AM",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PollItem extends StatelessWidget {
  const PollItem({
    super.key,
    required this.imageUrls,
  });
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: double.infinity,
      child: Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.circle_outlined),
            width10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LimitedBox(
                    maxWidth: double.infinity,
                    child: Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Online",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          LimitedBox(
                            maxHeight: 50,
                            maxWidth: 70,
                            child: Stack(
                              alignment: Alignment.center,
                              children: imageUrls.asMap().entries.map((entry) {
                                int index = entry.key;
                                String url = entry.value;
                                return Positioned(
                                  left: index *
                                      17, // Adjust overlap by modifying this value
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(url),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Text("3"),
                        ],
                      ),
                    ),
                  ),
                  LinearProgressIndicator(
                    color: AppColors.secondary(context),
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 10,
                    value: 0.4,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
