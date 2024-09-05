import 'dart:math';

import 'package:flutter/material.dart';

/// A widget that displays a random dice image and a button to roll the dice.
///
/// When the button is pressed, the widget is rebuilt with a new random
/// dice image.
class RollDiceWithButton extends StatefulWidget {
  const RollDiceWithButton({
    super.key,
  });

  @override

  /// Creates a new state object for the widget.
  State<RollDiceWithButton> createState() => _RollDiceWithButtonState();
}

class _RollDiceWithButtonState extends State<RollDiceWithButton> {
  int? imageIndex;
  @override

  /// Initializes the dice image index to a random number between 1 and 6 inclusive.
  void initState() {
    super.initState();
    imageIndex = Random().nextInt(6) + 1;
  }

  /// Updates the dice image to a new random image when the button is pressed.
  void rollDice() {
    setState(() {
      imageIndex = Random().nextInt(6) + 1;
    });
  }

  @override

  /// Builds a column containing a random dice image and a button to roll the dice.
  /// The image is centered horizontally and the button is placed below it.
  /// The button is a white text button with a font size of 32 and will call [rollDice] when pressed.
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/dice-$imageIndex.png",
            height: 325,
          ),
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ))
      ],
    );
  }
}
