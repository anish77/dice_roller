import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
       currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const StyleText(
          'Flutter - The Complete Guide Course',
          Colors.purpleAccent,
        ),
        const SizedBox(height: 16),
        const Text(
          'Learn Flutter step-by-step, from the ground up.',
          textAlign: TextAlign.center,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 25)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
