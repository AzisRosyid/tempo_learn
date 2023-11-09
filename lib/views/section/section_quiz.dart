import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Quiz.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';
import 'package:tempo_learn/common/widget/quiz_progress.dart';
import 'package:tempo_learn/common/widget/top_bar.dart';
import 'package:tempo_learn/views/section/section_quiz_finish.dart';

class SectionQuiz extends StatefulWidget {
  final Section section;

  const SectionQuiz({super.key, required this.section});

  @override
  State<SectionQuiz> createState() => _SectionQuizState();
}

class _SectionQuizState extends State<SectionQuiz> {
  late Quiz quiz;
  int timer = 180;
  int index = 0;
  List<int?> answers = [];
  int? idAnswer;

  @override
  void initState() {
    super.initState();
    quiz = widget.section.quiz;
    for (int i = 0; i < quiz.questions.length; i++) {
      answers.add(null);
    }

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.isActive && timer.tick < 180) {
        updateTimer();
      }
    });
  }

  void updateTimer() {
    setState(() {
      timer--;

      if (timer == 0) {
        nextQuestion();
      }
    });
  }

  void nextQuestion() {
    if (index < quiz.questions.length - 1) {
      index++;
      idAnswer = null;
      timer = 180;
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SectionQuizFinish(section: widget.section, answers: answers)),
      );
    }
  }

  void answerQuestion() {
    timer = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      color: widget.section.colors[0],
                      gradient: LinearGradient(
                        colors: widget.section.colors,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: TopBar(
                    settingAction: () {},
                    title: "Kerjakan Quiz",
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '${index + 1}/${quiz.questions.length}',
                          style: AppFontStyle.boldText
                              .copyWith(color: widget.section.colors[1]),
                          overflow: TextOverflow
                              .ellipsis, // Show ellipsis for overflow
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  QuizProgress(
                    progress: (index + 1) / quiz.questions.length,
                    colors: widget.section.colors,
                  ),
                ]),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nextQuestion();
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              widget.section.colors[1]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(100, 35.0)),
                        ),
                        child: Text(
                          "Skip",
                          style: AppFontStyle.quizButtonText,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: widget.section.colors[1],
                          borderRadius: BorderRadius.circular(
                              20.0), // Adjust the radius as needed
                        ),
                        child: Center(
                          child: Text(
                            "${(timer ~/ 60).toString().padLeft(2, '0')}:${(timer % 60).toString().padLeft(2, '0')}",
                            style: AppFontStyle.quizButtonText,
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 350,
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("${index + 1}.",
                          style: const TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                          width: 290,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: quiz.questions[index].contents.length,
                              itemBuilder: (BuildContext context, int i) {
                                final quizContent =
                                    quiz.questions[index].contents[i];
                                if (quizContent.type == 1) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        quizContent.content,
                                        style: const TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                        softWrap:
                                            true, // Allow text to wrap within its parent container
                                      ),
                                      if (index ==
                                          quiz.questions[index].contents
                                                  .length -
                                              1)
                                        const SizedBox(height: 200),
                                    ],
                                  );
                                } else if (quizContent.type == 2)
                                  // ignore: curly_braces_in_flow_control_structures
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 8,
                                        ),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(12)),
                                              child: Container(
                                                color: Colors
                                                    .white, // Add a background color for the image frame
                                                child: Image.asset(
                                                  'assets/images/quizzes/${quizContent.content}',
                                                  fit: BoxFit.cover,
                                                  width: double.infinity,
                                                  height:
                                                      200.0, // Adjust the height as needed
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: widget
                                                        .section.colors[1],
                                                    width: 2.2,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(12)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (i ==
                                          quiz.questions[index].contents
                                                  .length -
                                              1)
                                        const SizedBox(height: 200),
                                    ],
                                  );
                              }))
                    ]),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              margin: const EdgeInsets.only(bottom: 8),
              alignment: Alignment.bottomCenter,
              child: ListView.builder(
                reverse: true,
                itemCount: quiz.questions[index].answers.length,
                itemBuilder: (BuildContext context, int i) {
                  final answer = quiz.questions[index].answers[i];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: idAnswer != i
                                      ? Colors.white
                                      : answers[index] !=
                                              quiz.questions[index].correct
                                          ? const Color(0xFFf40752)
                                          : Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: MaterialButton(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          child: Text(
                                            answer,
                                            style: AppFontStyle.quizButtonText
                                                .copyWith(
                                                    color: idAnswer != i
                                                        ? widget
                                                            .section.colors[1]
                                                        : Colors.white),
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Visibility(
                                                visible: idAnswer == i &&
                                                    answers[index] !=
                                                        quiz.questions[index]
                                                            .correct,
                                                child: Image.asset(
                                                  'assets/icons/close.png',
                                                  width: 20,
                                                )),
                                            Visibility(
                                                visible: idAnswer == i &&
                                                    answers[index] ==
                                                        quiz.questions[index]
                                                            .correct,
                                                child: Image.asset(
                                                  'assets/icons/check.png',
                                                  width: 30,
                                                )),
                                            Visibility(
                                              visible: idAnswer != i,
                                              child: Image.asset(
                                                'assets/icons/arrow_right.png',
                                                color: widget.section.colors[1],
                                                width: 20,
                                              ),
                                            )
                                          ],
                                        )
                                      ]),
                                  onPressed: () {
                                    setState(() {
                                      if (idAnswer == null) {
                                        idAnswer = i;
                                        answers[index] = i;
                                        answerQuestion();
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
