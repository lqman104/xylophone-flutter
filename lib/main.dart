import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            "Ask me anything",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: TextButton(
            child: Image.asset("images/ball$number.png"),
            onPressed: () {
              setState(() {
                number = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
