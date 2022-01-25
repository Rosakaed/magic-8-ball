import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: ballbody()

      )
    );
}
class ballbody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF312D2D),
    appBar: AppBar(
    title: Center(
    child: Text('Welcome to magic'),
    ),
    backgroundColor: Colors.black,
    ),
    body: Ball()
    );
  }
}








class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}
int bn=1;
class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed: (){setState(() {
            bn=Random().nextInt(5)+1;
          });}, child: Image.asset('images/ball$bn.png'),),
        ),
      ],
    );
  }
}
