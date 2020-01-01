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

//class DicePage extends StatelessWidget {
//  int  leftDiceNumber = 6;
//
//  @override
//  Widget build(BuildContext context) {
//    leftDiceNumber = 6;
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              child: Image.asset('images/dice$leftDiceNumber.png'),
//              onPressed: (){
//                print('Left button got pressed.');
//              },
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              child: Image.asset('images/dice1.png'),
//              onPressed: (){
//                print('Right button got Pressed.');
//              },
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int  leftDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                setState(() {
                  leftDiceNumber = 1;
                  print('Left button got pressed. $leftDiceNumber');
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              onPressed: (){
                print('Right button got Pressed.');
              },
            ),
          ),
        ],
      ),
    );
  }
}

