import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;

  const NewBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 25,
              offset: Offset(15, 60),
            ),
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(60, -5),
            )
          ]),
      child: Center(
        child: child,
      ),
    );
  }
}
