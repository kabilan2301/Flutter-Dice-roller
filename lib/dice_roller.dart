import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-5.png';

  void rollDice(){
    setState(() {
      var rand = randomizer.nextInt(6)+1;
      activeDiceImage = 'assets/images/dice-$rand.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(activeDiceImage, width: 200,),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: rollDice, child: const Text("Roll Dice"))
            ],
          );
  }
}