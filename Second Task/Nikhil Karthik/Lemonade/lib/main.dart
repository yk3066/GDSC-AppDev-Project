import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  int Multiclick=0;
  int onClick = 0;
  int click = 1;
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
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    text0,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 1)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 2)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (onClick == 3)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    text3,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      if(onClick!=1 ){
                        onClick++;
                        onClick%=4;
                        Multiclick = Random().nextInt(3)+1;
                      }
                      else{
                        if(Multiclick>0){
                          Multiclick--;
                        }
                        else{
                          onClick++;
                          onClick%=4;
                        }
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