import 'dart:developer';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';

import '../core/size.dart';

class AudioRecordingWidget extends StatefulWidget {
  const AudioRecordingWidget({
    super.key,
    this.closeRecording,
    required this.isGroup,
  });
  final void Function()? closeRecording;
  final bool isGroup;

  @override
  State<AudioRecordingWidget> createState() => _AudioRecodingWidgetState();
}

class _AudioRecodingWidgetState extends State<AudioRecordingWidget> {
  late final RecorderController recorderController;
  String filePath = "";

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
      final path =
          "${tempDir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a";
      filePath = path;
      recorderController.record(path: path);

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
            StreamBuilder(
                stream: recorderController.onCurrentDuration,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text(
                      "0:00",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    );
                  }
                  return Text(
                    "${snapshot.data!.inMinutes}:${snapshot.data!.inSeconds}",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  );
                }),
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
                return widget.closeRecording!();
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
            InkWell(
              onTap: () {
                recorderController.stop();
                final waveList = recorderController.waveData;
                final file = File(filePath);
                if (widget.isGroup) {
                  context
                      .read<GroupBloc>()
                      .add(GroupEvent.sendAudioFile(file, waveList));
                } else {
                  context
                      .read<ChatBloc>()
                      .add(ChatEvent.sendAudioFile(file, waveList));
                }
                return widget.closeRecording!();
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        height10,
      ],
    );
  }
}
