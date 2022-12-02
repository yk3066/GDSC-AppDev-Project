import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: lemonpage(),
      ),
    ),
  );
}

class lemonpage extends StatefulWidget {
  lemonpage({Key? key}) : super(key: key);

  @override
  State<lemonpage> createState() => _lemonpageState();
}

class _lemonpageState extends State<lemonpage> {
  int n = 1;
  int c = 1;
  String textholder = 'Tap the lemon tree to select a lemon';

  void change() {
    if (n == 1) {
      c = 2;
      n++;
    } else if (n == 2) {
      c = 2;
      n++;
    } else if (n == 3 || n == 4) {
      c = 2;
      n++;
    } else if (n == 5) {
      c = 5;
      n++;
    } else if (n == 6) {
      c = 6;
      n++;
    } else {
      n = 1;
      c = 1;
    }
  }

  void changeText() {
    setState(() {
      if ((n == 2 || n == 3) || (n == 1 || n == 4)) {
        textholder = 'Keep tapping the lemon to squeeze it';
      } else if (n == 5) {
        textholder = 'Tap the lemonade to drink';
      } else if (n == 6) {
        textholder = 'Tap the Empty glass to start again';
      } else {
        textholder = 'Tap the lemon tree to select a lemon';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 150.0,
          ),
          Text(
            textholder,
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),

            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.blueAccent),
            ),
            child: TextButton(
              onPressed: () {
                changeText();
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/$c.png'),
            ),
          ),
        ],
      ),
    );
  }
}
