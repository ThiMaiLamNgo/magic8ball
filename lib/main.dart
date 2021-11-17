import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            BallNumber = Random().nextInt(5) + 1;
          });
          print('$BallNumber'); //print random number from 1-5 in the console.
        },
        child: Image.asset('images/ball$BallNumber.png'),
      ),
    );
  }
}

/*
// If only want to Print random number from 0 to 4 (random 0, 1, 2, 3 og 4):
int BallNumber = 0;
Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          BallNumber = Random().nextInt(5);
          print('$BallNumber');
        },
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
 */
