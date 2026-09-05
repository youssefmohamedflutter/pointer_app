import 'package:flutter/material.dart';
import 'package:pointer_app/shared/component/component/button_style.dart';
import 'package:pointer_app/shared/component/component/item_style.dart';

import '../shared/component/component/font_style.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pointTeamA = 0;
  int pointTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(16),
            bottomStart: Radius.circular(16),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: StyleFont(
          text: 'PointerApp',
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ItemStyle(
                      textTeam: 'Team A',
                      teamPoint: '$pointTeamA',
                      textPoint1: 'Add 1 Point',
                      textPoint2: 'Add 2 Point',
                      textPoint3: 'Add 3 Point',
                      onTap1: () {
                        addPoints('A', 1);
                      },
                      onTap2: () {
                        addPoints('A', 2);
                      },
                      onTap3: () {
                        addPoints('A', 3);
                      },
                    ),
                  ),

                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      thickness: 1,
                      indent: 40,
                      endIndent: 30,
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                  Expanded(
                    child: ItemStyle(
                      textTeam: 'Team B',
                      teamPoint: '$pointTeamB',
                      textPoint1: 'Add 1 Point',
                      textPoint2: 'Add 2 Point',
                      textPoint3: 'Add 3 Point',
                      onTap1: () {
                        addPoints('B', 1);
                      },
                      onTap2: () {
                        addPoints('B', 2);
                      },
                      onTap3: () {
                        addPoints('B', 3);
                      },
                    ),
                  ),
                ],
              ),
            ),
            StyleButton(
              text: 'Reset',
              onTap: () {
                setState(() {
                  pointTeamA = 0;
                  pointTeamB = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  void addPoints(String team, int points) {
    setState(() {
      if (team == 'A') {
        pointTeamA += points;
      } else if (team == 'B') {
        pointTeamB += points;
      }
    });
  }
}
