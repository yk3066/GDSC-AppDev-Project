import 'package:flutter/material.dart';
import 'package:lemonade_app/home.dart';
import 'package:lemonade_app/second.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
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
                'Tap the empty glass to start again',
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  padding: EdgeInsets.all(150),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage('images/lemon_restart.PNG'),
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
