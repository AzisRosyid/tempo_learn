class QuestionContent {
  final String
      content; // if type is 1 it's filled with question and if type is 2 it's filled with image asset path
  final int type; // only 1 or 2

  QuestionContent({required this.content, required this.type});
}