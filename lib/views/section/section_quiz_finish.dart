import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Quiz.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/helper.dart';
import 'package:tempo_learn/views/section/section_quiz.dart';

class SectionQuizFinish extends StatefulWidget {
  final Section section;
  final List<int?> answers;

  const SectionQuizFinish(
      {super.key, required this.section, required this.answers});

  @override
  State<SectionQuizFinish> createState() => _SectionQuizFinishState();
}

class _SectionQuizFinishState extends State<SectionQuizFinish> {
  late Quiz quiz;

  @override
  void initState() {
    super.initState();
    quiz = widget.section.quiz;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(children: [
              Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    quiz.title,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Image.asset(
                    'assets/images/checklist.png',
                    width: 220,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Telah Selesai",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dengan Skor",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 90, // Set the width as needed
                          height: 32.0, // Set the height as needed
                          decoration: BoxDecoration(
                            color: const Color(0xFF930000), // Background color
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the radius as needed
                          ),
                          child: Text(
                            '${widget.answers.asMap().entries.where((st) => st.value == quiz.questions[st.key].correct).length}/${quiz.questions.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow
                                .ellipsis, // Show ellipsis for overflow
                          ),
                        ),
                      ]),
                ],
              )
            ]),
            Container(
              height: 160,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(const Color(0xFF930000)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the radius as needed
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 38.0)), // Full width button
                    ),
                    child: const Text(
                      "Daftar Kuis",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SectionQuiz(section: widget.section,)));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the radius as needed
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 38.0)), // Full width button
                    ),
                    child: const Text(
                      "Mulai Ulang",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
