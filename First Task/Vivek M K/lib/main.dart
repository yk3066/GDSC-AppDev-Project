import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("music_images/images1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dehaze,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                height: 200.0,
                width: 200.0,
                child: Center(
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundImage: AssetImage('music_images/1.jpg'),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'HELLO WORLD',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          letterSpacing: 3.0),
                    ),
                    Text(
                      'By Mk21',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30.0,
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 380.0,
                height: 27.0,
                child: Divider(
                  thickness: 5.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '0:00',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 300.0,),
                  Text(
                    '-6:30',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.skip_previous,
                    size: 80.0,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.pause_circle_sharp,
                    size: 100.0,
                    color: Colors.blueAccent[700],
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 80.0,
                    color: Colors.blue,
                  ),
                ],
              )),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle,
                  size: 15,
                  color: Colors.lightBlue[100],),
                  SizedBox(width: 15,),
                  Icon(Icons.circle,
                    size: 15,
                    color: Colors.lightBlue[200],),
                  SizedBox(width: 15,),
                  Icon(Icons.circle,
                    size: 15,
                    color: Colors.lightBlue[300],),
                  SizedBox(width: 15,),
                  Icon(Icons.circle,
                    size: 15,
                    color: Colors.lightBlue[400],),
                  SizedBox(width: 15,),
                  Icon(Icons.circle,
                    size: 15,
                    color: Colors.lightBlue[500],),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shuffle_rounded,
                      size: 50.0,
                      color: Colors.pink,
                    ),
                    Icon(
                      Icons.library_add,
                      size: 50.0,
                      color: Colors.teal,
                    ),
                    Icon(
                      Icons.bar_chart_outlined,
                      size: 50.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
