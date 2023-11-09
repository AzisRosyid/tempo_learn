import 'package:flutter/material.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';
import 'package:tempo_learn/common/utils/transition_shift.dart';
import 'package:tempo_learn/views/section/section_video.dart';

class HomeMenuItem extends StatefulWidget {
  final String title;
  final String icon;
  final List<Color> colors;
  final Section section;
  const HomeMenuItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.colors,
      required this.section});

  @override
  State<HomeMenuItem> createState() => _HomeMenuItemState();
}

class _HomeMenuItemState extends State<HomeMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: widget.colors,
            stops: const [0.0, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(TransitionShift(child: SectionVideo(section: widget.section,)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style:
                        AppFontStyle.homeItemText.copyWith(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
