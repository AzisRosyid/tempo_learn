import 'package:tempo_learn/common/data/QuestionContent.dart';

class Question {
  final List<QuestionContent> contents;
  final List<String> answers; // index lenght must be 4 {0, 1, 2, 3}
  final int correct; // filled with index of correct answers

  Question(
      {required this.contents, required this.answers, required this.correct});
}