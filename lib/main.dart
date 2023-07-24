import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override

  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dice Number: $diceNumber',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: changeDiceNumber,
                child: Text('Roll Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
