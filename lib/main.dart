import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
            title: Center(
          child: Text("Ask Me Anything"),
        )),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}
int ballNumber = 1;
void updateBall(){
  ballNumber = Random().nextInt(5) + 1;
  print("New ball number:  $ballNumber");
}
class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
          onPressed: () {
            setState(() {
              updateBall();
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
