import 'package:just_audio/just_audio.dart';

class AudioPlayerController {
  static final _playerController = AudioPlayer();
  static bool isPlaying = false;
  static Duration duration = Duration.zero;
  static Duration position = Duration.zero;
  static double progress = 0.0;

  static Future<void> init(String audioUrl) async {
    await _playerController
        .setAudioSource(AudioSource.uri(Uri.parse(audioUrl)));
  }

  static void listenDuration(void Function(Duration?)? event) {
    _playerController.durationStream.listen(event);
  }

  static void listenPosition(void Function(Duration)? event) {
    _playerController.positionStream.listen(event);
  }

  static void togglePlayPause() async {
    if (isPlaying) {
      _playerController.pause();
    } else {
      _playerController.play();
    }
    isPlaying = !isPlaying;
  }

  static dispose() {
    _playerController.dispose();
  }

  static stop() {
    _playerController.stop();
  }
}
