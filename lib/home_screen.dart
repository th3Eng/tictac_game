import 'package:flutter/material.dart';

import 'game_logic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String activePlayer = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = '';
  Game game = Game();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
              title: const Text(
                'Turn on/on Two players',
                style: TextStyle(color: Colors.white),
              ),
              value: isSwitched,
              onChanged: (bool newVal) {
                setState(() {
                  isSwitched = newVal;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
