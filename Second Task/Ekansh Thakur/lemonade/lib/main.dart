import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _cout = 0;
  var _taps = 0;

  var image = [
    'assets/images/lemon_tree.PNG',
    'assets/images/lemon_squeeze.PNG',
    'assets/images/lemon_drink.PNG',
    'assets/images/lemon_restart.PNG'
  ];
  var textt = [
    "Tap on lemon tree to select a lemon",
    "Keep tapping lemon to squeeze it",
    "Tap the lemonade to drink",
    "Tap the empty glass to start again"
  ];

  @override
  Widget build(BuildContext context) {
    if (_cout == 1) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  textt[_cout],
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: .5,
                      color: const Color.fromARGB(255, 33, 243, 243)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Image.asset(image[_cout]),
                  iconSize: 150,
                  onPressed: () {
                    setState(() {
                      _taps--;
                      if (_taps == 0) {
                        _cout++;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );
    } else if (_cout == 3) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  textt[_cout],
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: .5,
                      color: const Color.fromARGB(255, 33, 243, 243)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Image.asset(image[_cout]),
                  iconSize: 150,
                  onPressed: () {
                    setState(() {
                      _cout = 0;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  textt[_cout],
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: .5,
                      color: const Color.fromARGB(255, 33, 243, 243)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Image.asset(image[_cout]),
                  iconSize: 150,
                  onPressed: () {
                    setState(() {
                      if (_cout == 0) {
                        _taps = Random().nextInt(5) + 1;
                        _cout++;
                      } else {
                        _cout++;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
