import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 250,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            var diceRoll = randomize.nextInt(6) + 1;
            setState(() {
              activeDiceImage = 'assets/images/dice-$diceRoll.png';
            });
          },
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
