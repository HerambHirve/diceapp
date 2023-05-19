import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class DiceProvider extends ChangeNotifier {
  int _diceNumber1 = 1;

  int get diceNumber1 => diceNumber1;

  Future<void> rollDice() async {
    Random random = Random();

    for (int i = 0; i <= 5; i++) {
      await Future.delayed(Duration(milliseconds: 200), () {
        _diceNumber1 = random.nextInt(5) + 1;
        notifyListeners();
      });
    }
  }
}

final diceProvider = ChangeNotifierProvider((ref) => DiceProvider());
