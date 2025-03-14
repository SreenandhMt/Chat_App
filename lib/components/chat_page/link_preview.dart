import 'package:chat_app/core/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/url_loader.dart';

import '../../core/colors.dart';

class LinkPreviewWidget extends StatefulWidget {
  const LinkPreviewWidget({
    super.key,
    required this.link,
    required this.isSender,
    this.isGroup = false,
    this.title,
    this.description,
    this.imageUrl,
    required this.time,
  });
  final String link;
  final bool isSender;
  final bool isGroup;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String time;

  @override
  State<LinkPreviewWidget> createState() => _LinkPreviewWidgetState();
}

class _LinkPreviewWidgetState extends State<LinkPreviewWidget> {
  String title = '';
  String description = '';
  String imageUrl = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String? title = widget.title;
    String? description = widget.description;
    String? imageUrl = widget.imageUrl;
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
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null &&
                    imageUrl != null &&
                    description != null &&
                    title.isEmpty &&
                    imageUrl.isEmpty &&
                    description.isEmpty)
                  SizedBox.shrink()
                else
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.grey(context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (imageUrl != null && imageUrl.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.network(
                              imageUrl,
                              width: double.infinity,
                            ),
                          ),
                        if (title != null)
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 10,
                              right: 10,
                            ),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        if (description != null && description.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 5, left: 10, right: 10),
                            child: Text(description),
                          )
                        else
                          height5,
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, top: 0, left: 10, right: 10),
                          child: Text(
                            UrlPreviewLoader.getDomain(widget.link),
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.link,
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                )
              ],
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
                  widget.time,
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
