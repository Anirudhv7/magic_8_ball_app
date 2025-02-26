import 'package:flutter/material.dart';
import 'dart:math';

// Main application 
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
                // Main header text
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
// Stateful widget for the magic ball functionality
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  // Default ball state
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
                    // Display current ball state image
                    image: AssetImage('images/ball$ball.png'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
