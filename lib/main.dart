import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Center(
      child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: (){
              leftDiceNumber = 1;
            },
            child: Image.asset('images/dice$leftDiceNumber.png'))),
        Expanded(
          child: TextButton(onPressed: null, child: Image.asset('images/dice1.png'))),
        ],
    ),
    );
  }
}