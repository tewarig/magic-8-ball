import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  void changeNumber() {
    ballnumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
              onPressed: () {
                setState(() {
                  changeNumber();
                });
              },
              child: Image.asset('images/ball$ballnumber.png')),
        ),
      ),
      color: Colors.blue,
    );
  }
}
