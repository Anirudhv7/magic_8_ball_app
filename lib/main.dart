import 'package:flutter/material.dart';
import 'dart:math';

// Main application 
void main() {
  return runApp(
    // Material App is being created
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          // Background color has been changed to blue
          backgroundColor: Colors.blue[200],
          //AppBar has been created
          appBar: AppBar(
            //Background of the AppBar has been set to blue
            backgroundColor: Colors.blue[800],
            title: Center(
              child: Text(
                // Main header text
                'Ask Me Anything',
                style:
                // Text style has been added and the color of the text is changed to white with a bold font
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //Body of the App 
          body: MagicBall(),
        ),
      ),
    ),
  );
}
// Stateful widget for the magic ball functionality
// Allows the widget to maintain state that can change depending on the circumstances
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
    // Gesture Detector has been created to map all the taps
    return GestureDetector(
        onTap: () {
          //SetState triggers the rebuild of the app with new predictions
          setState(() { 
            //Generating random numbers between 1 to 5 
            ball = Random().nextInt(5) + 1;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            // Row widget is being used to arrange the 8 ball images horizontally 
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
