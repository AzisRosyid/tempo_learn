import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Quiz.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';
import 'package:tempo_learn/common/utils/transtition_fade.dart';
import 'package:tempo_learn/common/widget/quiz_clipper.dart';
import 'package:tempo_learn/common/widget/top_bar.dart';
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
      body: Stack(
        children: [
                    ClipPath(
            clipper: QuizClipper(),
            child: Container(
                color: const Color(0xFF80D6DA),
                height: MediaQuery.of(context).size.height * .8,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: widget.section.colors,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight))))),
          ListView(
            padding: EdgeInsets.zero,
            children: [
            Column(
              children: [
                TopBar(settingAction: (){}, title: "Hasil Quiz",),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.section.title,
                  style: AppFontStyle.boldText.copyWith(fontSize: 28, color: Colors.white, height: 1.2),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  'assets/images/checklist.png',
                  width: MediaQuery.of(context).size.height * .3,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Telah Selesai",
                  style: AppFontStyle.boldText.copyWith(fontSize: 28, color: Colors.white, height: 1.2),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dengan Skor",
                        style: AppFontStyle.boldText.copyWith(fontSize: 24, color: Colors.white, height: 1.2),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 90, // Set the width as needed
                        height: 32.0, // Set the height as needed
                        decoration: BoxDecoration(
                          color: widget.section.colors[1].withOpacity(.5),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 2,
                            color: Colors.white
                          )
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
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FB),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Container(
                        height: 42.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: widget.section.colors,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Center(
                          child: Text("Lanjut",
                              style: AppFontStyle.sectionButtonText),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6,),
                     ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(TransitionFade(
                            child: SectionQuiz(
                          section: widget.section,
                        )));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Container(
                        height: 42.0,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFf44369),
                              Color(0xFFf40752)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Center(
                          child: Text("Mulai Ulang",
                              style: AppFontStyle.sectionButtonText),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
