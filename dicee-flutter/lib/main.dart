import 'dart:ui' as prefix0;

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
       body:DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int pic=1;
  int pic2=2;
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:

            FlatButton(
                onPressed: (){
                 setState(() {

                   pic=Random().nextInt(6)+1;


                 });
                },
                child: Image.asset('images/dice$pic.png')
            ),

          ),
          Expanded(
            child:  FlatButton(
                onPressed: (){
              setState(() {

                pic2=Random().nextInt(6)+1;


              });
            },

                child: Image.asset('images/dice$pic2.png')
            ),

          ),
        ],
      ),
    );
  }
}

