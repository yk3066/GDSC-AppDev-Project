import 'package:flutter/material.dart';

import './Display.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _images = const [
    {
      "text": "Tap Lemon Tree to select a lemon",
      "image": "assets/images/img1.PNG"
    },
    {
      "text": "Keep tapping lemon to squeeze it",
      "image": "assets/images/img2.PNG"
    },
    {"text": "Tap the lemonade to drink it", "image": "assets/images/img3.PNG"},
    {
      "text": "Tap the empty glass to start again",
      "image": "assets/images/img4.PNG"
    },
  ];
  var _textIndex = 0;
  var _imageIndex = 0;
  var count = 0;
  void _nextAction() {
    setState(() {
      if (_textIndex == 0) count = 0;
      if (_textIndex == 1 && count != 2) {
        count++;
      } else {
        _textIndex += 1;
        _imageIndex += 1;
        _textIndex = _textIndex % _images.length;
        _imageIndex = _imageIndex % _images.length;
      }
    });
    if (_textIndex < _images.length) {
      print("We have more actions left to make our lemonade");
    } else {
      print("repeat process");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Display(
              nextActionFunction: _nextAction,
              imageIndex: _imageIndex,
              text: _images[_imageIndex]["text"],
              image: _images[_imageIndex]["image"])),
    );
  }
}
