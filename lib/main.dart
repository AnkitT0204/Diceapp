import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange.shade600,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),

      ),

    ),

  );

}




class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbutton=5;
  int rightbutton=5;
  void changeface(){
    setState(() {
      leftbutton=Random().nextInt(6)+1;
      rightbutton=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top:190.0),
        child: Row(children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:(){
                changeface();
              },
              child: Image.asset("images/dice$leftbutton.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
               changeface();
              },
              child: Image.asset("images/dice$rightbutton.png"),
            ),
          ),
          SizedBox(
            height:20.0,
          ),

  FlatButton(
      onPressed: (){
        changeface();
      },


      child: Icon(Icons.gamepad_rounded))



        ]),
      ),


    );


  }
}


