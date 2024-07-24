import 'package:flutter/material.dart';

import 'dots_circular_progress_painter.dart';

class DotsCircularProgressIndicator extends StatefulWidget {
  final Color color;
  final int numberOfDots;

  const DotsCircularProgressIndicator(
      {Key? key, this.color = Colors.blue, this.numberOfDots = 12})
      : super(key: key);

  @override
  _DotsCircularProgressIndicatorState createState() =>
      _DotsCircularProgressIndicatorState();
}

class _DotsCircularProgressIndicatorState
    extends State<DotsCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return CustomPaint(
          painter: DotsCircularProgressPainter(
            progress: _controller.value,
            numberOfDots: widget.numberOfDots,
            color: widget.color,
          ),
          size: Size(100, 100),
        );
      },
    );
  }
}
