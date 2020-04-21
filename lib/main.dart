import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text(
            'Touch any Dice'
        ),
        backgroundColor: Colors.red,
      ),
      body:MyApp(),
      backgroundColor: Colors.amberAccent,
    ),
  ),
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDice=Random().nextInt(6)+1;
                  print("Left dice pressed $leftDice");
                });
              },
                child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDice=Random().nextInt(6)+1;
                  print("right dice pressed $rightDice");
                });
              },
                child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
