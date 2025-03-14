import 'dart:developer';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';

class AppAudioPlayer extends StatefulWidget {
  final String audioUrl;
  final List<double> wave;
  final bool isSender;

  const AppAudioPlayer({
    super.key,
    required this.audioUrl,
    required this.wave,
    required this.isSender,
  });

  @override
  _AppAudioPlayerState createState() => _AppAudioPlayerState();
}

class _AppAudioPlayerState extends State<AppAudioPlayer> {
  late final PlayerController _playerController;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  double progress = 0.0;
  String? localPath;
  final style = PlayerWaveStyle(
    fixedWaveColor: Colors.white,
    liveWaveColor: Colors.green,
    spacing: 6,
    scaleFactor: 40,
    scrollScale: 1.0,
    waveCap: StrokeCap.round,
    liveWaveGradient: null,
  );

  @override
  void initState() {
    super.initState();
    _playerController = PlayerController();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      localPath = await _downloadFile(widget.audioUrl);
      if (localPath == null) {
        log("Failed to download file.");
        return;
      }
      setState(() {});

      await _playerController
          .preparePlayer(
              path: localPath!,
              shouldExtractWaveform: true,
              noOfSamples: style.getSamplesForWidth(350))
          .then((v) {
        _playerController.updateFrequency = UpdateFrequency.low;
      });
      _playerController.onCurrentDurationChanged.listen((p) {
        if (!mounted) return;
        if (_playerController.maxDuration > 0 && isPlaying) {
          setState(() {
            progress = p / _playerController.maxDuration;
          });
        }
        setState(() {
          position = Duration(minutes: p);
        });
      });

      _playerController.onCompletion.listen((_) {
        if (!mounted) return;
        setState(() {
          isPlaying = false;
          position = Duration.zero;
        });
      });
    } catch (e) {
      print("Error initializing player: $e");
    }
  }

  Future<String?> _downloadFile(String url) async {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = '${dir.path}/s.mp3';
    final file = File(filePath);
    try {
      if (await file.exists()) {
        return filePath;
      }
      await Dio().download(url, filePath);
      return filePath;
    } catch (e) {
      print("File download error: $e");
      return null;
    }
  }

  void _togglePlayPause() async {
    if (isPlaying) {
      _playerController.pausePlayer();
    } else {
      _playerController.startPlayer();
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  String _formatDuration(Duration d) {
    return "${d.inMinutes}:${(d.inSeconds % 60).toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.chatColor(context, widget.isSender),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
            ),
            iconSize: 40,
            color: Colors.white,
            onPressed: _togglePlayPause,
          ),
          Expanded(
            child: localPath != null
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomPaint(
                        size: Size(300, 40),
                        painter: WaveformPainter(widget.wave, progress),
                      ),
                      Text(
                        _formatDuration(position),
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
          width5,
          DownloadAudioProgressBar()
        ],
      ),
    );
  }
}

class DownloadAudioProgressBar extends StatelessWidget {
  const DownloadAudioProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        LimitedBox(
          maxWidth: 30,
          maxHeight: 30,
          child: CircularProgressIndicator(
            value: 0.2,
            color: Colors.white,
            backgroundColor: Colors.grey,
            strokeAlign: 0.1,
          ),
        ),
        Icon(
          Icons.close,
          size: 20,
        )
      ],
    );
  }
}

class WaveformPainter extends CustomPainter {
  final List<double> amplitudes;
  final double progress; // Tracks playback progress

  WaveformPainter(this.amplitudes, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint playedPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    final Paint unplayedPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    final double midY = size.height / 2;
    final double spacing = size.width / amplitudes.length;
    final int playedIndex = (amplitudes.length * progress).toInt();

    for (int i = 0; i < amplitudes.length; i++) {
      final double height = amplitudes[i] * size.height * 0.8;
      final double x = i * spacing;
      final Paint paint = i <= playedIndex ? playedPaint : unplayedPaint;

      canvas.drawLine(
        Offset(x, midY - height / 2),
        Offset(x, midY + height / 2),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(WaveformPainter oldDelegate) =>
      oldDelegate.progress != progress || oldDelegate.amplitudes != amplitudes;
}
