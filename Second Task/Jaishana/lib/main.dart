import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int onClick = 0;
  int click = 0;
  int multiclick = 3;
  String t0 = "Tap to pick lemon";
  String t1 = "Tap to squeeze lemon";
  String t2 = "Tap to drink lemonade";
  String t3 = "Tap empty glass to restart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (onClick == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t0,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white
                        ),
                  ),
                ),
              if (onClick == 1)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t1,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white
                    ),
                  ),
                ),
              if (onClick == 2)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t2,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white),
                  ),
                ),
              if (onClick == 3)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t3,
                    style: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white),
                  ),
                ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      click += 1;
                      onClick += 1;
                      multiclick += 1;



                      onClick = onClick % 4;
                      while (onClick == 2 && click < multiclick) {
                        onClick -= 1;
                        multiclick -= 1;
                      }
                      if (onClick == 3 && click == multiclick) {
                        multiclick += 3;
                      }
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3.0, color: Colors.lightBlueAccent),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(
                            image: AssetImage('Images/lemon$onClick.PNG')),
                      ))),
            ],
          ),
        ),

      ),
    );
  }
}


