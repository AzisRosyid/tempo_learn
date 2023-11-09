import 'package:flutter/material.dart';
import 'package:tempo_learn/common/theme/app_font_style.dart';

class TopBar extends StatefulWidget {
  final String title;
  final VoidCallback settingAction;
  final VoidCallback? popAction;
  const TopBar({super.key, this.title = "Helo", required this.settingAction, this.popAction});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 16, right: 20),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.popAction != null) {
                widget.popAction!();
              }
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/back.png',
              color: Colors.white,
              width: 28,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              widget.title.length > 24 ? '${widget.title.substring(0, 24)}...' : widget.title,
              style: AppFontStyle.topBarText
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.settingAction();
              });
            },
            child: Image.asset(
              'assets/icons/setting.png',
              color: Colors.white,
              width: 28,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
