import 'dart:math'; // to use the random function for dice
import 'dart:ui';
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

// as we have to change the dice no. then it shouldn't be in stateless as it is dynamic ,hence we need a stateful widget

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

int no1 = 1, no2 = 1;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      call();
                    });
                  },
                  child: Image.asset('images/dice$no1.png')),
            ),
//          SizedBox(                             //we don't need it as we are going to introduce button,which has it's own padding
//              width:10, //we have also image.asset instead of image widget which is very handy
//            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      call();
                    });
                  },
                  child: Image.asset('images/dice$no2.png')),
            ),
          ],
        ),
      ),
    );
  }
}

void call() {
  no2 = Random().nextInt(6) + 1;
  no1 = Random().nextInt(6) + 1;
}
