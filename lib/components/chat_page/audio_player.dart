import 'dart:developer';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:flutter/material.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'dart:io';

List<double> waves = [
  0.17492307722568512,
  0.14175909757614136,
  0.10550244897603989,
  0.08252700418233871,
  0.08174645155668259,
  0.08577923476696014,
  0.12523937225341797,
  0.09032165259122849,
  0.0702907145023346,
  0.0729372501373291,
  0.06385350227355957,
  0.06155289337038994,
  0.13240163028240204,
  0.0916103795170784,
  0.07235309481620789,
  0.06141621991991997,
  0.05938723310828209,
  0.07404611259698868,
  0.17095185816287994,
  0.13861757516860962,
  0.10784649103879929,
  0.0900442972779274,
  0.08871598541736603,
  0.0940970629453659,
  0.17454077303409576,
  0.14176078140735626,
  0.10442321002483368,
  0.08485651761293411,
  0.07636573165655136,
  0.08846890181303024,
  0.12345901876688004,
  0.08942214399576187,
  0.07093481719493866,
  0.07327848672866821,
  0.06313616037368774,
  0.06267319619655609,
  0.1347087025642395,
  0.09311570972204208,
  0.07169345021247864,
  0.059997353702783585,
  0.0584704726934433,
  0.06731219589710236,
  0.1332796961069107,
  0.09710725396871567,
  0.07984906435012817,
  0.06905040889978409,
  0.06116650998592377,
  0.0633382573723793,
  0.1306534707546234,
  0.09531629085540771,
  0.07033363729715347,
  0.07145465165376663,
  0.06706102192401886,
  0.06379558145999908,
  0.13477613031864166,
  0.10240104794502258,
  0.0695388987660408,
  0.07363727688789368,
  0.05997359752655029,
  0.05415868014097214,
  0.13961909711360931,
  0.09999128431081772,
  0.06700845062732697,
  0.07022120803594589,
  0.06326261162757874,
  0.08289673179388046,
  0.15547695755958557,
  0.1257355958223343,
  0.09556255489587784,
  0.08255420625209808,
  0.07417493313550949,
  0.07285210490226746,
  0.12655045092105865,
  0.08811040967702866,
  0.07680115103721619,
  0.0680551528930664,
  0.05774477869272232,
  0.06422968953847885,
  0.13321024179458618,
  0.10922257602214813,
  0.0779799073934555,
  0.06946456432342529,
  0.05523522198200226,
  0.048701174557209015,
  0.13533355295658112,
  0.09868428856134415,
  0.06871017813682556,
  0.0652238056063652,
  0.054829854518175125,
  0.06918016076087952
];

class AppAudioPlayer extends StatefulWidget {
  final String audioUrl;

  const AppAudioPlayer({super.key, required this.audioUrl});

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
      waves = await _playerController.extractWaveformData(
          path: localPath!, noOfSamples: style.getSamplesForWidth(350));
      setState(() {});
      log(waves.toString());

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
        color: AppColors.chatColor(context, true),
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
            child: localPath != null && waves.isNotEmpty
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomPaint(
                        size: Size(300, 40),
                        painter: WaveformPainter(waves, progress),
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
