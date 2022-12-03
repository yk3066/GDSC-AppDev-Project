import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  final Function selectHandler;
  final image;
  DisplayImage(this.selectHandler, this.image);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          selectHandler();
        },
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color.fromARGB(255, 7, 197, 250),
                width: 3,
              ),
            ),
            child: ClipRRect(
              
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                
                width: 280.0,
                height: 320.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
