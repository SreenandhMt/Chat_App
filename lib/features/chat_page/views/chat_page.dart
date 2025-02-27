import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chat_app/components/chat_page/audio_player.dart';
import 'package:chat_app/components/chat_page/link_preview.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/image.dart';
import 'package:chat_app/core/size.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  bool isRecoding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.chatBackgroundColor(context),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 65),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor(context),
            ),
            padding: MediaQuery.paddingOf(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.arrow_back),
                ),
                CircleAvatar(
                  radius: 20,
                ),
                width10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "George Alan",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("Online"),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.video_camera, size: 36)),
                // width10,
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
                // width10,
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.info)),
                width10,
              ],
            ),
          )),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: List.generate(
                  5,
                  (index) => ChatWidget(
                    isSender: (index == 3 || index == 1),
                    audio: index == 3
                        ? "https://webaudioapi.com/samples/audio-tag/chrono.mp3"
                        : null,
                    image: index == 4
                        ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNSgGbqmow7OzxHkEu_F2x9Z91uA61XZaEHg&s"
                        : null,
                    url: index == 5 ? "https://chatgpt.com/" : null,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor(context),
                borderRadius: BorderRadius.circular(2),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: isRecoding
                  ? AudioRecodingWidget()
                  : Column(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: 50,
                            maxHeight: 150,
                          ),
                          child: TextFormField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                hintText: "Type your message...",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Divider(thickness: 0.1),
                        Row(
                          spacing: 15,
                          children: [
                            Icon(CupertinoIcons.add_circled),
                            IconButton(
                                onPressed: () {
                                  isRecoding = !isRecoding;
                                  setState(() {});
                                },
                                icon: Icon(CupertinoIcons.mic)),
                            Icon(CupertinoIcons.smiley),
                            Icon(Icons.sticky_note_2_outlined),
                            Icon(CupertinoIcons.sparkles),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
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

class AudioRecodingWidget extends StatefulWidget {
  const AudioRecodingWidget({super.key});

  @override
  State<AudioRecodingWidget> createState() => _AudioRecodingWidgetState();
}

class _AudioRecodingWidgetState extends State<AudioRecodingWidget> {
  late final RecorderController recorderController;

  @override
  void initState() {
    super.initState();
    initController();
  }

  void initController() async {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100;
    await recorderController.checkPermission();
    if (recorderController.hasPermission) {
      Directory tempDir = await getTemporaryDirectory();
      final audioPath =
          '${tempDir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a';

      recorderController.record(path: audioPath);

      setState(() {});
    }
  }

  @override
  void dispose() {
    recorderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            width10,
            Text(
              "0:10",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            width20,
            Expanded(
                child: AudioWaveforms(
              size: Size(double.infinity, 40),
              recorderController: recorderController,
              shouldCalculateScrolledPosition: true,
              padding: EdgeInsets.symmetric(vertical: 10),
              waveStyle: WaveStyle(
                scaleFactor: 50,
                waveColor: Colors.white,
                extendWaveform: true,
                showMiddleLine: false,
                spacing: 6.0,
              ),
            )),
            width10,
          ],
        ),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                recorderController.stop();
              },
              icon: Icon(
                Icons.delete,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                if (recorderController.isRecording) {
                  recorderController.pause();
                } else {
                  recorderController.record();
                }
              },
              icon: Icon(
                Icons.pause_circle_outline_rounded,
                size: 50,
                color: Colors.red,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.send_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
        height10,
      ],
    );
  }
}

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    this.isSender = false,
    this.image,
    this.audio,
    this.url,
  });
  final bool isSender;
  final String? image;
  final String? audio;
  final String? url;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    if (widget.url != null) {
      return Align(
        alignment:
            widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.chatColor(context, widget.isSender),
            borderRadius: BorderRadius.circular(17),
          ),
          constraints: BoxConstraints(
            minHeight: 65,
            maxWidth: size.width * 0.79,
            minWidth: size.width * 0.3,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: LinkPreviewWidget(
                  link: widget.url!,
                  isSender: widget.isSender,
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
        ),
      );
    }
    if (widget.audio != null) {
      return Align(
        alignment:
            widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.chatColor(context, widget.isSender),
            borderRadius: BorderRadius.circular(17),
          ),
          constraints: BoxConstraints(
            minHeight: 65,
            maxWidth: size.width * 0.79,
            minWidth: size.width * 0.3,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppAudioPlayer(audioUrl: widget.audio!),
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
        ),
      );
    }
    if (widget.image != null) {
      return Align(
        alignment:
            widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.chatColor(context, widget.isSender),
            borderRadius: BorderRadius.circular(17),
          ),
          constraints: BoxConstraints(
            minHeight: 65,
            maxWidth: size.width * 0.79,
            minWidth: size.width * 0.3,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 9),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: NetworkImageWidget(imageUrl: widget.image!),
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
        ),
      );
    }
    return Align(
      alignment: widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.chatColor(context, widget.isSender),
          borderRadius: BorderRadius.circular(17),
        ),
        constraints: BoxConstraints(
          minHeight: 65,
          maxWidth: size.width * 0.79,
          minWidth: size.width * 0.3,
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 21),
              child: Text(
                "Hi, Testing the message",
                style: TextStyle(fontSize: 16),
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
      ),
    );
  }
}
