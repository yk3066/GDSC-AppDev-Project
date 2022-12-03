import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('Lemonade'),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: lemonade(),
      ),
    ),
  );
}

class lemonade extends StatefulWidget {
  const lemonade({Key? key}) : super(key: key);
  @override
  _lemonadeState createState() => _lemonadeState();
}

class _lemonadeState extends State<lemonade> {
  int c = 1;
  int n = 0;
  String txt = "";

  void change() {
    if(n == 0){
      c = 1;n++;
    } else if(n == 1 || n == 2 || n == 3){
      c = 2;n++;
    } else if(n == 4){
      c = 3;n++;
    } else if(n == 5){
      c = 4;n++;
    } else {
      n = 0; c = 1;
    }
  }
  void imgtext() {
    if(n == 0){
      txt = "Tap on the tree to collect lemons";
    } else if(n == 1 || n == 2 || n == 3){
      txt = "Tap on lemon to squeeze the juice";
    } else if(n == 4){
      txt = "Tap on the glass to drink";
    } else if(n == 5){
      txt = "Tap on empty glass to make lemonade again";
    } else{
      txt = "Tap on the tree to collect lemons";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            txt,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
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
                imgtext();
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/$c.PNG'),
            ),
          ),
        ],
      ),
    );
  }
}
