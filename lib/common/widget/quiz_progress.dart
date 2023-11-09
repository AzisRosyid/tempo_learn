import 'package:flutter/material.dart';

class QuizProgress extends StatefulWidget {
  final double progress;
  final double width;
  final double height;
  final List<Color> colors;
  const QuizProgress(
      {super.key,
      required this.progress,
      this.width = 280,
      this.height = 8,
      required this.colors});

  @override
  State<QuizProgress> createState() => _QuizProgressState();
}

class _QuizProgressState extends State<QuizProgress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: widget.colors[0],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: widget.progress,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(widget.colors[1]),
            ),
          ),
        ),
      ],
    );
  }
}
