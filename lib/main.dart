import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(
            child: Text('Please ask me anything!'),
          ),
          backgroundColor: Colors.black38,
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageSate createState() => _MagicBallPageSate();
}

class _MagicBallPageSate extends State<MagicBallPage> {
  int Magic_Ball = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Magic_Ball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$Magic_Ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
