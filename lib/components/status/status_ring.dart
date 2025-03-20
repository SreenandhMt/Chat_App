import 'dart:math';

import 'package:flutter/material.dart';

class StatusRing extends StatelessWidget {
  final int segments;
  final int? viewedIndex;
  final double gapSize;
  final double progress;
  final Color color;
  final String image;

  const StatusRing({
    super.key,
    required this.segments,
    this.viewedIndex,
    required this.gapSize,
    required this.progress,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [];
    for (var i = 0; i < segments; i++) {
      if (viewedIndex != null && (i + 1) <= viewedIndex!) {
        colors.add(Colors.grey);
      } else {
        colors.add(color);
      }
    }
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            top: 4.4,
            right: 0,
            left: 0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                image,
              ),
            ),
          ),
          // Custom Status Ring
          SizedBox(
            width: 65,
            height: 65,
            child: CustomPaint(
              painter: StatusRingPainter(
                segments: segments,
                gapSize: gapSize,
                progress: progress,
                colors: colors,
                strokeWidth: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 🎨 Custom Painter for Status Ring
class StatusRingPainter extends CustomPainter {
  final int segments;
  final double gapSize;
  final double progress;
  final List<Color> colors;
  final double strokeWidth;

  StatusRingPainter({
    required this.segments,
    required this.gapSize,
    required this.progress,
    required this.colors,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    const double totalAngle = 2 * pi;
    double filledAngle = totalAngle * progress;
    int filledSegments = (segments * progress).ceil();
    double segmentAngle = (totalAngle - (gapSize * segments)) / segments;
    double startAngle = -pi / 2;

    for (int i = 0; i < segments; i++) {
      if (i < filledSegments) {
        final Paint paint = Paint()
          ..color = colors[i % colors.length] // Cycle through colors
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
        canvas.drawArc(
          Rect.fromCircle(
              center: Offset(radius, radius), radius: radius - strokeWidth / 2),
          startAngle,
          min(segmentAngle, filledAngle),
          false,
          paint,
        );
      }
      startAngle += segmentAngle + gapSize;
      filledAngle -= segmentAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
