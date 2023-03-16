import 'dart:math';
import 'package:flutter/material.dart';

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
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftb = 1;
  int rightb =1;
  void CDM() {
    setState(() {
      leftb = Random().nextInt(6) + 1;
      rightb = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
              CDM();
              },
              child: Image.asset('images/dice$leftb.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                CDM();
              },
              child: Image.asset('images/dice$rightb.png'),
            ),
          ),
        ],
      ),
    );
  }
}


