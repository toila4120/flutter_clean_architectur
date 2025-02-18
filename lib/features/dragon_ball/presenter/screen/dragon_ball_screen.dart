import 'package:flutter/material.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/presenter/widget/button_random_dragon_ball.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/presenter/widget/dragon_ball_card.dart';

class DragonBallScreen extends StatefulWidget {
  const DragonBallScreen({super.key});

  @override
  State<DragonBallScreen> createState() => _DragonBallScreenState();
}

class _DragonBallScreenState extends State<DragonBallScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dragon ball",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            DragonBallCard(),
            SizedBox(height: 16),
            ButtonRandomDragonBall()
          ],
        ),
      ),
    );
  }
}
