import 'dart:math';

import 'package:flutter/material.dart';

const int BALL_IMAGE_COUNT = 5;

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int currentImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(
            onPressed: () {
              randomiseNumber();
            },
            child: Image.asset('images/ball$currentImageNumber.png'),
          ),
        ),
      ),
    );
  }

  void randomiseNumber() {
    setState(() {
      currentImageNumber = Random().nextInt(BALL_IMAGE_COUNT) + 1;
    });
  }
}
