import 'package:flutter/material.dart';
import 'package:lemonade_app/last.dart';
import 'package:lemonade_app/second.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
                'Tap the lemonade to drink it.',
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LastPage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  padding: EdgeInsets.all(150),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage('images/lemon_drink.PNG'),
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
