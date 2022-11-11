import 'package:flutter/material.dart';
import 'constants.dart';

class PaddingTop extends StatelessWidget {
  PaddingTop({required this.icon,required this.left,required this.top,required this.right,required this.bottom});
  IconData icon;
  double left,top,right,bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Icon(
        icon,
        color: kColorWhite,
        size: 50,
      ),
    );
  }
}