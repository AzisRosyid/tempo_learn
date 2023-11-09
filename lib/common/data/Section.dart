import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Quiz.dart';

class Section {
  final int id;
  final String title;
  final String video;
  final Quiz quiz;
  final String summary;
  final String reference;
  final List<Color> colors;

  const Section(
      {required this.id,
      required this.title,
      required this.video,
      required this.quiz,
      required this.summary,
      required this.reference,
      required this.colors});
}
