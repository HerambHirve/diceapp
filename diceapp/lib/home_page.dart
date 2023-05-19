import 'package:diceapp/dice_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diceNotifier = ref.watch(diceProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/123.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                'Ask Me ',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'images/ball${diceNotifier.diceNumber1}.png',
                ),
                height: 500,
                width: 500,
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.white, Colors.blue]),
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    )),
                child: Center(
                  child: GestureDetector(
                    child: const Text(
                      'MAGIC',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    onTap: () async => diceNotifier.rollDice(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
