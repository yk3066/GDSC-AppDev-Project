import 'package:flutter/material.dart';
import 'package:lemonade_app/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                'Tap the lemon tree to select a lemon',
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  padding: EdgeInsets.all(150),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage('images/lemon_tree.PNG'),
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
