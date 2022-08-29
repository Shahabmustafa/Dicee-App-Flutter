import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int left_image = 1;
  int right_image = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  left_image = Random().nextInt(6) + 1 ;
                });
                print('value $left_image');
              },
              child: Image.asset('images/dice$left_image.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  right_image = Random().nextInt(6) + 1;
                });
                print('value $right_image');
              },
              child: Image.asset('images/dice$right_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}

