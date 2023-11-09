import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:tempo_learn/common/data/Section.dart';
import 'package:tempo_learn/common/helper.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';
import 'package:tempo_learn/common/widget/home_menu_item.dart';
import 'package:tempo_learn/common/widget/wave_clipper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              'assets/images/home.png',
              fit: BoxFit.contain,
            ),
          ),
          ClipPath(
              clipper: WaveClipper(),
              child: Container(
                  color: const Color(0xFF80D6DA),
                  height: 120.0,
                  child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color(0xFF007bd9),
                            Color(0xFF209bd9),
                            Color(0xFF80D6DA),
                          ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight))))),
          Positioned(
              top: 120,
              left: 20,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StrokeText(
                      text: 'Tempo Learn',
                      textStyle: AppFontStyle.homeHeaderText,
                      strokeWidth: 5,
                      strokeColor: Colors.white,
                    ),
                    const SizedBox(height: 10,),
                    StrokeText(
                      text: 'Temporal Contiguity Principle',
                      textStyle: AppFontStyle.homeSubHeaderText,
                      strokeWidth: 4,
                      strokeColor: Colors.white,
                    )
                  ])),
          Container(
            margin: const EdgeInsets.only(top: 240),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 750,
                width: double.infinity,
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
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 21,
                      ),
                      height: MediaQuery.of(context).size.height * 0.63,
                      child: GridView.count(
                        padding: const EdgeInsets.all(8),
                        crossAxisCount: 1,
                        crossAxisSpacing: 45,
                        mainAxisSpacing: 24,
                        childAspectRatio: 2.8,
                        children: [
                          for (Section st in sections)
                          HomeMenuItem(
                            icon: "al_quran.png",
                            title: st.title,
                            colors: st.colors,
                            section: st,
                          ),
                          // HomeMenuItem(
                          //   icon: "law.png",
                          //   name: "",
                          //   colors: [
                          //     Color(0xFFEFCF42),
                          //     Color(0xFFE59700),
                          //   ],
                          // ),
                          SizedBox(),
                        ],
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
