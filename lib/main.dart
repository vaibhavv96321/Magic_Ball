import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 75,
            backgroundColor: Colors.blueGrey,
            title: Center(
              child: Column(
                children: [
                  Text(
                    'MAGIC BALL',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 3,
                    ),
                  ),
                  Text(
                    'ask anything...',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontFamily: 'SB',
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: MagicBall(),
          backgroundColor: Colors.blueGrey.shade300,
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int button = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  button = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$button.png',
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
