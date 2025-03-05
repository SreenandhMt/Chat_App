import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../core/size.dart';

class AudioRecordingWidget extends StatefulWidget {
  const AudioRecordingWidget({
    super.key,
    this.closeRecording,
  });
  final void Function()? closeRecording;

  @override
  State<AudioRecordingWidget> createState() => _AudioRecodingWidgetState();
}

class _AudioRecodingWidgetState extends State<AudioRecordingWidget> {
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
              onTap: widget.closeRecording,
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
