import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/spidey.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Icon(
                          Icons.thumb_down_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Sunflower",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  child: Text(
                    "Post Malone and Swae Lee",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 380),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        width: 160,
                        height: 5.5,
                      ),
                      Container(
                        color: Colors.white,
                        width: 100,
                        height: 5.5,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "1:37",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 200),
                      Text(
                        "2:38",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.shuffle_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 9.0),
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 70.0,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.pause_circle,
                          color: Colors.white,
                          size: 80.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 70.0,
                          shadows: [],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.playlist_add_check_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
