import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewPage extends StatefulWidget {
  const VideoViewPage({
    super.key,
    required this.isGroup,
    required this.url,
  });
  final bool isGroup;
  final String url;

  @override
  State<VideoViewPage> createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
  late VideoPlayerController controller;

  Future<void> init(String url) async {
    controller = VideoPlayerController.networkUrl(Uri.parse(url))
      ..initialize().then((value) {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void initState() {
    init(widget.url);
    super.initState();
  }

  double getAdjustedHeight(BuildContext context, Size size) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = kToolbarHeight;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double bottomInset = MediaQuery.of(context).viewInsets.bottom;
    final double availableHeight =
        screenHeight - appBarHeight - statusBarHeight - bottomInset;
    final double currentHeight = size.height;

    return currentHeight < availableHeight ? currentHeight : availableHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          controller.value.isInitialized
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: controller.value.size.width,
                    height: getAdjustedHeight(context, controller.value.size),
                    child: Stack(
                      children: [
                        VideoPlayer(controller),
                        Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {
                              controller.value.isPlaying
                                  ? controller.pause()
                                  : controller.play();
                              setState(() {});
                            },
                            icon: Icon(
                              controller.value.isPlaying
                                  ? Icons.pause_circle_filled_rounded
                                  : Icons.play_circle_filled,
                              size: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
