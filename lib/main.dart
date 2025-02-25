import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Center(
              child: Text(
                'Ask Me Anything',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            ball = Random().nextInt(5) + 1;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('images/ball$ball.png'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
