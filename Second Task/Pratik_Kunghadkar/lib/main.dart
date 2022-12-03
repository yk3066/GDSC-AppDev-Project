import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int onClick = 0;
  int click = 0;
  int Multiclick = 3;
  String text0 = "Tap to pick lemon";
  String text1 = "Tap to squeeze lemon";
  String text2 = "Tap to drink lemonade";
  String text3 = "Tap empty glass to restart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (onClick == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$text0",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 1)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$text1",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 2)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$text2",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 3)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$text3",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      click += 1;
                      Multiclick += 1;
                      onClick += 1;
                      onClick = onClick % 4;
                      while (onClick == 2 && click < Multiclick) {
                        onClick -= 1;
                        Multiclick -= 1;
                      }
                      if (onClick == 3 && click == Multiclick) {
                        Multiclick += 3;
                      }
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 4.0, color: Colors.blue),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(
                            image: AssetImage('Images/lemon$onClick.PNG')),
                      ))),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
