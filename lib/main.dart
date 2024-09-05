import 'package:flutter/material.dart';
import 'package:roll_dice/screens/home_screen.dart';

void main() {
  // Run the app with the given widget.
  runApp(const RollDice());
}

// The RollDice widget is the root widget of the application.
class RollDice extends StatelessWidget {
  // Constructor for the RollDice widget.
  const RollDice({super.key});

  // The build method builds the widget tree for the RollDice widget.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Disable the debug banner.
      debugShowCheckedModeBanner: false,
      // Set the home route to the HomeScreen widget.
      home: HomeScreen(),
    );
  }
}
