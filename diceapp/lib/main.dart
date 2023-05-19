import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(diceapp());
}

class diceapp extends StatelessWidget {
  const diceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
