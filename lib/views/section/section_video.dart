import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';
import 'package:tempo_learn/common/utils/transtition_fade.dart';
import 'package:tempo_learn/common/widget/back_clipper.dart';
import 'package:tempo_learn/common/widget/confirm_dialog.dart';
import 'package:tempo_learn/common/widget/loading.dart';
import 'package:tempo_learn/common/widget/top_bar.dart';
import 'package:tempo_learn/views/section/section_quiz.dart';
import 'package:video_player/video_player.dart';

class SectionVideo extends StatefulWidget {
  final Section section;
  const SectionVideo({super.key, required this.section});

  @override
  State<SectionVideo> createState() => _SectionVideoState();
}

class _SectionVideoState extends State<SectionVideo> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool isQuizDialogVisible = false;

  @override
  void initState() {
    super.initState();
    initVideoPlayer();
  }

  void initVideoPlayer() async {
    _videoPlayerController =
        VideoPlayerController.asset("assets/videos/${widget.section.video}");
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16 / 9,
        autoPlay: true,
        cupertinoProgressColors: ChewieProgressColors(
            backgroundColor: Colors.white, playedColor: Colors.white));
    await _videoPlayerController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
              clipper: BackClipper(),
              child: Container(
                  color: const Color(0xFF80D6DA),
                  height: MediaQuery.of(context).size.height * .65,
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: widget.section.colors,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight))))),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(title: widget.section.title, settingAction: () {}),
              const SizedBox(
                height: 12,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Video",
                    style: AppFontStyle.sectionSubTitleText,
                  )),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: MediaQuery.of(context).size.width * 9 / 16,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.2),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      const Loading(),
                      AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController),
                      ),
                      Chewie(
                        controller: _chewieController,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 75,
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
                          isQuizDialogVisible = true;
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
                  ],
                ),
              ),
            ),
          ),
          ConfirmDialog(
              title: "Konfirmasi Quiz",
              message:
                  "Kerjakan Quiz yang berjumlah ${widget.section.quiz.questions.length} soal. Setiap soal memiliki batas waktu 3 menit.",
              colors: widget.section.colors,
              visible: isQuizDialogVisible,
              confirmText: "Kerjakan",
              onConfirm: () {
                setState(() {
                  isQuizDialogVisible = false;
                });
                Navigator.of(context).push(TransitionFade(
                    child: SectionQuiz(
                  section: widget.section,
                )));
              },
              onDismiss: () {
                setState(() {
                  isQuizDialogVisible = false;
                });
              })
        ],
      ),
    );
  }
}
