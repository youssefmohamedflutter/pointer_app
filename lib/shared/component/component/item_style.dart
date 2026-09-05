import 'package:flutter/material.dart';

import 'button_style.dart';
import 'font_style.dart';

class ItemStyle extends StatelessWidget {
  const ItemStyle({
    super.key,
    required this.textTeam,
    required this.teamPoint,
    required this.textPoint1,
    required this.textPoint2,
    required this.textPoint3,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
  });

  final String textTeam;
  final String teamPoint;
  final String textPoint1;
  final String textPoint2;
  final String textPoint3;
  final Function() onTap1;
  final Function() onTap2;
  final Function() onTap3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StyleFont(
          text: textTeam,
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        StyleFont(
          text: teamPoint,
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        StyleButton(text: textPoint1, onTap: onTap1),
        StyleButton(text: textPoint2, onTap: onTap2),
        StyleButton(text: textPoint3, onTap: onTap3),
      ],
    );
  }
}

