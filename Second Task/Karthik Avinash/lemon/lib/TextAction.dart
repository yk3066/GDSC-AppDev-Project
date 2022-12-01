import 'package:flutter/material.dart';

class TextAction extends StatelessWidget {
  final String guide;
  TextAction(this.guide);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 420,
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    guide,
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                    softWrap: false,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
