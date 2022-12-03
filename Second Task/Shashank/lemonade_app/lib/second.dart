import 'package:flutter/material.dart';
import 'package:lemonade_app/third.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Keep tapping the lemon to squeeze it.',
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                  if (count == 4)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  padding: EdgeInsets.all(150),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage('images/lemon_squeeze.PNG'),
                        fit: BoxFit.contain,
                      ),
                      border: Border.all(color: Colors.cyan, width: 2)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
