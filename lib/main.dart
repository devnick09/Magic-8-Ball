import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask me Any Thing'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber= 1;
  randomDice(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(
            onPressed: (){
              randomDice();
            },
            child: Image.asset('images/ball$ballNumber.png'),
          )
          ),
        ],
      ),
    );
  }
}

