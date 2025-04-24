import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/core/file_type.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/chat_page/models/message_model.dart';
import 'package:http/http.dart' as http;

class DocumentWidget extends StatefulWidget {
  const DocumentWidget({
    super.key,
    required this.isSender,
    this.isGroup = false,
    required this.messageModel,
  });
  final bool isSender;
  final bool isGroup;
  final MessageModel messageModel;

  @override
  State<DocumentWidget> createState() => _DocumentWidgetState();
}

class _DocumentWidgetState extends State<DocumentWidget> {
  int fileSize = 0;
  bool downloadDone = false;
  Future<int?> getFileSize(String fileUrl) async {
    try {
      final filePath =
          '/storage/emulated/0/Download/${widget.messageModel.documentName}';
      final file = File(filePath);
      if (await file.exists()) {
        downloadDone = true;
      }
      final response = await http.head(Uri.parse(fileUrl));

      if (response.statusCode == 200) {
        String? contentLength = response.headers['content-length'];
        if (contentLength == null) {
          return null;
        }
        return int.parse(contentLength);
      }
    } catch (e) {
      print("Error: $e");
    }
    return null;
  }

  String formatFileSize(int bytes) {
    if (bytes >= 1024 * 1024) {
      return "${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB";
    } else if (bytes >= 1024) {
      return "${(bytes / 1024).toStringAsFixed(2)} KB";
    } else {
      return "$bytes Bytes";
    }
  }

  @override
  void initState() {
    getFileSize(widget.messageModel.message!).then((value) {
      if (mounted) {
        setState(() {
          fileSize = value!;
        });
      }
    });
    super.initState();
  }

  Future<String?> _downloadFile(String url) async {
    final filePath =
        '/storage/emulated/0/Download/${widget.messageModel.documentName}';
    final file = File(filePath);
    try {
      if (await file.exists()) {
        return filePath;
      }
      await Dio().download(url, filePath);
      if (mounted) {
        setState(() {
          downloadDone = true;
        });
      }
      return filePath;
    } catch (e) {
      print("File download error: $e");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final image = getFileUrl(widget.messageModel.documentType!);
    final color = widget.isSender ? Colors.white : null;
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
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                if (image == null)
                  Icon(
                    CupertinoIcons.doc,
                    size: 30,
                    color: color,
                  )
                else
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        width: 40,
                        imageUrl: image,
                        fit: BoxFit.cover,
                      )),
                width10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.messageModel.documentName!,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: color),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 5,
                          children: [
                            Text(
                              "15, Oct, 2025",
                              style: TextStyle(color: color),
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: color,
                            ),
                            Text(
                              formatFileSize(fileSize),
                              style: TextStyle(color: color),
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: color,
                            ),
                            Text(
                              widget.messageModel.documentType!,
                              maxLines: 1,
                              style: TextStyle(color: color),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                if (!widget.isSender && !downloadDone) ...[
                  IconButton(
                    onPressed: () =>
                        _downloadFile(widget.messageModel.message!),
                    icon: Icon(
                      Icons.file_download_outlined,
                      color: AppColors.secondary(context),
                      size: 25,
                    ),
                  )
                ]
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
                  widget.messageModel.time,
                  style: TextStyle(fontSize: 12, color: color),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
