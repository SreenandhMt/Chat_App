import 'dart:developer';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

import 'package:chat_app/core/colors.dart';

class AppAudioPlayer extends StatefulWidget {
  final String audioUrl;
  final List<double> wave;
  final bool isSender;
  final String messageId;

  const AppAudioPlayer({
    super.key,
    required this.audioUrl,
    required this.wave,
    required this.isSender,
    required this.messageId,
  });

  @override
  _AppAudioPlayerState createState() => _AppAudioPlayerState();
}

class _AppAudioPlayerState extends State<AppAudioPlayer>
    with WidgetsBindingObserver {
  final _playerController = AudioPlayer();
  bool isPlaying = false;
  bool downloadDone = false;
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
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    final filePath = '/storage/emulated/0/Download/${widget.messageId}.mp3';
    final file = File(filePath);
    if (await file.exists()) {
      downloadDone = true;
    }
    try {
      await _playerController
          .setAudioSource(AudioSource.uri(Uri.parse(widget.audioUrl)));
      _playerController.durationStream.listen(
        (event) {
          duration = event ?? Duration.zero;
          if (mounted) {
            setState(() {});
          }
        },
      );
      _playerController.positionStream.listen(
        (event) {
          final newProgress = event.inMilliseconds / duration.inMilliseconds;

          if ((newProgress - progress).abs() > 0.001 && mounted) {
            setState(() {
              position = event;
              progress = newProgress;
            });
          }
        },
      );
      _playerController.playingStream.listen(
        (event) {
          log("not working");
          if (mounted) {
            setState(() {
              isPlaying = event;
            });
          }
        },
      );
      _playerController.playerStateStream.listen((state) {
        if (state.processingState == ProcessingState.completed) {
          if (mounted) {
            setState(() {
              progress = 0.0;
              isPlaying = false;
              _playerController.seek(Duration.zero);
              _playerController.pause();
            });
          }
        }
      });
      _playerController.setLoopMode(LoopMode.off);
    } catch (e) {
      print("Error initializing player: $e");
    }
  }

  Future<String?> _downloadFile(String url) async {
    final filePath = '/storage/emulated/0/Download/${widget.messageId}.mp3';
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

  void _togglePlayPause() async {
    if (isPlaying) {
      _playerController.pause();
    } else {
      _playerController.play();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _playerController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _playerController.stop();
      progress = 0.0;
      _playerController.seek(Duration.zero);
    }
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPaint(
                  size: Size(300, 55),
                  painter: WaveformPainter(widget.wave, progress),
                ),
                Text(
                  isPlaying
                      ? "${_formatDuration(duration)} / ${_formatDuration(position)}"
                      : _formatDuration(duration),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          if (!widget.isSender && !downloadDone)
            IconButton(
                onPressed: () => _downloadFile(widget.audioUrl),
                icon: Icon(Icons.file_download_outlined))
        ],
      ),
    );
  }
}

class WaveformPainter extends CustomPainter {
  final List<double> amplitudes;
  final double progress;

  WaveformPainter(this.amplitudes, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint playedPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final Paint unplayedPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final double midY = size.height / 2;
    final double maxBarHeight = size.height * 0.7; // Limit max bar height

    // **Step 1: Downsample the waveform data to fit width**
    int targetSamples = size.width ~/ 3; // 3px spacing
    List<double> downsampledWave = _downsampleWave(amplitudes, targetSamples);

    double spacing = size.width / downsampledWave.length;
    int playedIndex = (downsampledWave.length * progress).toInt();

    // **Step 2: Draw the waveform**
    for (int i = 0; i < downsampledWave.length; i++) {
      double height =
          (downsampledWave[i] * maxBarHeight).clamp(2, maxBarHeight);
      double x = i * spacing;
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

  // **Step 3: Downsampling Function**
  List<double> _downsampleWave(List<double> wave, int targetSamples) {
    if (wave.length <= targetSamples) return wave; // No need to downsample

    List<double> result = [];
    double step = wave.length / targetSamples;

    for (int i = 0; i < targetSamples; i++) {
      int index = (i * step).toInt();
      result.add(wave[index]);
    }
    return result;
  }
}
