import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 21.0,
          foregroundColor: Colors.pinkAccent,
          backgroundColor: Colors.black12,
          actions: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(
              width: 280.0,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 35.0,
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white10,
          elevation: 21.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              SizedBox(
                  width: 70.0,
                  child: Divider(
                    thickness: 3.0,
                    color: Colors.red,
                  )),
              Icon(
                Icons.circle,
                size: 10.0,
                color: Colors.red,
              ),
              SizedBox(
                width: 115.0,
                child: Divider(
                  thickness: 3.0,
                  color: Colors.cyan,
                ),
              ),
              SizedBox(
                width: 110.0,
              ),
              Icon(
                Icons.bar_chart,
                color: Colors.deepPurpleAccent.shade400,
                size: 50.0,
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/images.jpg'), fit: BoxFit.fill),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70.0,
                width: 30.0,
              ),

              Card(
                child: SizedBox(
                  height: 250.0,
                  width: 310.0,
                  child: Image(
                    image: AssetImage('Images/music_1.jpg'),
                    height: 300.0,
                    width: 400.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              SizedBox(
                height: 50.0,
              ),

              // If we want the progress indicator of full width (as max as possible) =>
              // LinearProgressIndicator(
              //   backgroundColor: Colors.cyanAccent.shade700,
              //   valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
              //   value: 0.30,
              //   minHeight: 3.0,
              // ),

              // If we want custom progress indicator of limited width =>

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 120.0,
                      child: Divider(
                        thickness: 3.0,
                        color: Colors.red,
                      )),
                  Icon(
                    Icons.circle,
                    size: 10.0,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 180.0,
                    child: Divider(
                      thickness: 3.0,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "0.00",
                    style: TextStyle(
                        color: Colors.deepPurpleAccent.shade100,
                        fontSize: 10.0),
                  ),
                  SizedBox(width: 270.0),
                  Text(
                    "-4.30",
                    style: TextStyle(
                        color: Colors.blueAccent.shade200, fontSize: 10.0),
                  )
                ],
              ),

              SizedBox(
                height: 15.0,
              ),

              Text(
                "Khairiyat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 35.0,
                  color: Colors.cyanAccent.shade400,
                ),
              ),

              SizedBox(
                height: 1.0,
                width: 30.0,
              ),

              Text(
                "Arjit Singh",
                style: TextStyle(
                    letterSpacing: 3.0, fontSize: 20.0, color: Colors.pink),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    CupertinoIcons.shuffle_medium,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.0,
                    height: 100.0,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white30,
                    size: 50.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('Images/image12.jpg'),
                    child: Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.queue_music,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.deepPurpleAccent.shade700,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.deepPurpleAccent.shade200,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.blueAccent.shade200,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.cyanAccent.shade400,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.cyanAccent.shade700,
                    size: 10.0,
                  ),
                ],
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
