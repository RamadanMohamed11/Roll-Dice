import 'package:flutter/material.dart';
import 'package:roll_dice/constants/colors.dart';
import 'package:roll_dice/widgets/roll_dice_with_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: const RollDiceWithButton(),
            ),
          )
        ],
      ),
    );
  }
}
