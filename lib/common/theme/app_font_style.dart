import 'package:flutter/material.dart';

class AppFontStyle {
  static TextStyle boldText = const TextStyle(fontSize: 14, fontFamily: "Nunito", fontWeight: FontWeight.bold,);
  static TextStyle normalText = const TextStyle(fontSize: 14, fontFamily: "Nunito", height: 1);
  static TextStyle homeHeaderText = const TextStyle(
    fontSize: 40,
    color: Color(0xFF007bd9),
    fontFamily: 'EduTAS',
  );

  static TextStyle homeSubHeaderText = const TextStyle(
      fontSize: 14,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.black);

    static TextStyle homeListHeaderText = const TextStyle(
      fontSize: 22,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.black);

  static TextStyle homeItemText = const TextStyle(
      fontSize: 18,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white);

    static TextStyle topBarText = const TextStyle(
      fontSize: 19,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white);
  
      static TextStyle sectionSubTitleText = const TextStyle(
      fontSize: 26,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white);

        static TextStyle sectionButtonText = const TextStyle(
      fontSize: 18,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white);

          static TextStyle dialogTitleText = const TextStyle(
      fontSize: 24,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.black);

          static TextStyle dialogText = const TextStyle(
      fontSize: 14,
      fontFamily: 'Nunito',
      color: Colors.black);

              static TextStyle dialogButtonText = const TextStyle(
      fontSize: 18,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white);

                    static TextStyle quizButtonText = const TextStyle(
      fontSize: 16,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      height: 1.1,
      color: Colors.white);

  static TextStyle authInputText =
      const TextStyle(fontSize: 14, fontFamily: "Baloo2");
  static TextStyle authHintText = const TextStyle(
      color: Color(0xFF9EA3A2), fontSize: 14, fontFamily: "Baloo2");
  static TextStyle authSmallText =
      const TextStyle(fontSize: 12, fontFamily: "Baloo2");
  static TextStyle authSmallBoldText = TextStyle(
      fontSize: 12,
      fontFamily: "Baloo2",
      fontWeight: FontWeight.bold,
      shadows: const [
        Shadow(
          blurRadius: 8,
          color: Color(0x663CEAC1),
        ),
        Shadow(
          blurRadius: 8,
          color: Color(0x6600C0DA),
        ),
      ],
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: [
            Color(0xFF3CEAC1),
            Color(0xFF00C0DA),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)));
  static TextStyle tabText = TextStyle(
      fontSize: 28,
      fontFamily: "Baloo",
      color: const Color(0xFF6E6E6E).withOpacity(.5),
      height: .1);
  static TextStyle tabActiveText = TextStyle(
      fontSize: 28,
      fontFamily: "Baloo",
      height: .1,
      shadows: const [
        Shadow(
          blurRadius: 8,
          color: Color(0x663CEAC1),
        ),
        Shadow(
          blurRadius: 8,
          color: Color(0x6600C0DA),
        ),
      ],
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: [
            Color(0xFF3CEAC1),
            Color(0xFF00C0DA),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)));
}
