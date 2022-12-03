import 'package:flutter/material.dart';
import 'TextAction.dart';
import './ImageAction.dart';

class Display extends StatelessWidget {
  final int imageIndex;
  final Function nextActionFunction;
  final String image;
  final String text;
  Display({
    @required this.imageIndex,
    @required this.nextActionFunction,
    @required this.image,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextAction(text),
        DisplayImage(() => nextActionFunction(), image),
      ],
    );
  }
}
