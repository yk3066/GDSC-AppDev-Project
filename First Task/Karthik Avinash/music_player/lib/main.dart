import 'package:flutter/material.dart';
import './gradientIcon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                      // Icons.play_circle_outline,
                      Icons.account_circle
                      // Icons.play_circle_filled,
                      ),
                  iconSize: 25,
                  color: Color.fromARGB(255, 239, 182, 182),
                  splashColor: Color.fromARGB(255, 239, 182, 182),
                  onPressed: () {},
                ),
                Text(
                  "KA",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromARGB(255, 239, 182, 182),
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Spacer(flex:1),
            Text(
              "MUSIC PLAYER",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 239, 182, 182),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // fontFamily: 
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 149, 30, 170),
                Color.fromARGB(255, 94, 46, 145),
                Color.fromARGB(255, 66, 43, 167),
                Color.fromARGB(255, 41, 91, 152),
                Color.fromARGB(255, 52, 142, 206)
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 23, 21, 21).withOpacity(1),
                Color.fromARGB(255, 98, 89, 89).withOpacity(0.8),
                Color.fromARGB(255, 19, 10, 10).withOpacity(1),
                Color.fromARGB(136, 64, 55, 55).withOpacity(0.6),
                Color.fromARGB(221, 12, 12, 12).withOpacity(1),
              ],
            ),
          ),
          height: 900, //Necessary for scrollable view.
          width: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Icon(
                          //   Icons.horizontal_split,
                          //   color: Colors.grey,
                          //   size: 30,
                          // ),
                          IconButton(
                            icon: Icon(
                              Icons.horizontal_split,
                            ),
                            iconSize: 40,
                            color: Color.fromARGB(255, 239, 182, 182),
                            splashColor: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_double_arrow_down_outlined,
                          ),
                          iconSize: 40,
                          color: Color.fromARGB(255, 239, 182, 182),
                          splashColor: Colors.grey,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Spacer(flex:1),
              Container(
                // padding: EdgeInsets.all(1),
                // margin: EdgeInsets.all(2),
                height: 370,
                width: 290,
                // child: Card(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(20),
                //     child: Image.asset(
                //       'assets/images/back.jpg',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20.0),
                //   ),
                //   // elevation: 5,
                //   margin: EdgeInsets.all(5),
                // ),
                child: Container(
                  child: Container(
                    child: Image.asset("assets/images/img5.png",
                        color: Colors.black),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                  ),
                  // child: Card(child:Image.asset("assets/images/img1.png"),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 149, 30, 170),
                        Color.fromARGB(255, 94, 46, 145),
                        Color.fromARGB(255, 66, 43, 167),
                        Color.fromARGB(255, 41, 91, 152),
                        Color.fromARGB(255, 115, 181, 228)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),

              Spacer(flex: 2),
              Container(
                width: 290,
                height: 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Color.fromARGB(255, 94, 46, 145),
                      Color.fromARGB(255, 66, 43, 167),
                      Color.fromARGB(255, 41, 91, 152),
                      Color.fromARGB(255, 118, 165, 199)
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    " 0:00",
                    style: TextStyle(
                      color: Color.fromARGB(255, 239, 182, 182),
                      fontSize: 17,
                    ),
                  ),
                  Spacer(flex: 5),
                  Text(
                    "-3:30",
                    style: TextStyle(
                      color: Color.fromARGB(255, 239, 182, 182),
                      fontSize: 17,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),

              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                        // Icons.play_circle_outline,
                        Icons.library_music
                        // Icons.play_circle_filled,
                        ),
                    iconSize: 40,
                    color: Color.fromARGB(255, 177, 53, 198),
                    splashColor: Color.fromARGB(255, 239, 182, 182),
                    onPressed: () {},
                  ),
                  Container(
                    child: Text(
                      "SONG TITLE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Color.fromARGB(255, 205, 27, 237)),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(25),
                  //   gradient: LinearGradient(
                  //     colors: [
                  //       Color.fromARGB(255, 58, 7, 67).withOpacity(0.7),
                  //       Color.fromARGB(255, 94, 46, 145).withOpacity(0.7),
                  //       Color.fromARGB(255, 66, 43, 167).withOpacity(0.8),
                  //       Color.fromARGB(255, 41, 91, 152).withOpacity(0.9),
                  //       Color.fromARGB(255, 118, 165, 199).withOpacity(1),
                  //       Color.fromARGB(255, 41, 91, 152).withOpacity(0.9),
                  //       Color.fromARGB(255, 66, 43, 167).withOpacity(0.8),
                  //       Color.fromARGB(255, 94, 46, 145).withOpacity(0.7),
                  //       Color.fromARGB(255, 58, 7, 67).withOpacity(0.7),
                  //     ],
                  //   ),
                  //   border: Border.all(),
                  // ),
                  IconButton(
                    icon: Icon(
                        // Icons.play_circle_outline,
                        Icons.person_pin_outlined
                        // Icons.play_circle_filled,
                        ),
                    iconSize: 30,
                    color: Color.fromARGB(255, 239, 182, 182),
                    splashColor: Color.fromARGB(255, 239, 182, 182),
                    onPressed: () {},
                  ),

                  Container(
                    child: Text(
                      "SINGER",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 239, 182, 182),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 5,
                    ),
                    Container(
                      
                      child: IconButton(
                        icon: Icon(
                          Icons.fast_rewind,
                        ),
                        iconSize: 35,
                        color: Color.fromARGB(255, 239, 182, 182),
                        splashColor: Color.fromARGB(255, 239, 182, 182),
                        onPressed: () {},
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      
                      child: IconButton(
                        icon: Icon(
                          // Icons.play_circle_outline,
                          Icons.airplay_rounded,
                          // Icons.play_circle_filled,
                        ),
                        iconSize: 110,
                        color: Color.fromARGB(255, 239, 182, 182),
                        splashColor: Color.fromARGB(255, 239, 182, 182),
                        onPressed: () {},
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      
                      child: IconButton(
                        icon: Icon(
                          Icons.fast_forward,
                        ),
                        iconSize: 35,
                        color: Color.fromARGB(255, 239, 182, 182),
                        splashColor: Color.fromARGB(255, 239, 182, 182),
                        onPressed: () {},
                      ),
                    ),
                    Spacer(
                      flex: 5,
                    ),
                  ],
                ),
              ),
              // Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.fiber_manual_record,
                    ),
                    iconSize: 15,
                    color: Color.fromARGB(255, 178, 32, 204),
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fiber_manual_record,
                    ),
                    iconSize: 15,
                    color: Color.fromARGB(255, 92, 16, 174),
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fiber_manual_record,
                    ),
                    iconSize: 15,
                    color: Color.fromARGB(255, 66, 43, 167),
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fiber_manual_record,
                    ),
                    iconSize: 15,
                    color: Color.fromARGB(255, 41, 91, 152),
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fiber_manual_record,
                    ),
                    iconSize: 15,
                    color: Color.fromARGB(255, 118, 165, 199),
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              Spacer(flex: 2),
              // Container(
              //   alignment: Alignment.center,
              //   height: 50,
              //   width: 50,
              //   child: Column(
              //     children: [Image.asset("assets/images/nft6.png")],
              //   ),
              // ), //To add images.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Color.fromARGB(255, 94, 46, 145),
                          Color.fromARGB(255, 66, 43, 167),
                          Color.fromARGB(255, 41, 91, 152),
                          Color.fromARGB(255, 118, 165, 199),
                        ],
                      ),
                    ),
                  ),
                  GradientIcon(
                    Icons.signal_cellular_alt,
                    50.0,
                    LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 205, 11, 239),
                        Color.fromARGB(255, 151, 40, 170),
                        Color.fromARGB(255, 114, 49, 126),
                        Color.fromARGB(255, 113, 58, 122),
                        Color.fromARGB(255, 100, 27, 179),
                        Color.fromARGB(255, 74, 59, 139),
                        Color.fromARGB(255, 47, 82, 126),
                        Color.fromARGB(255, 86, 111, 129),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.signal_cellular_alt,
                  //   ),
                  //   iconSize: 60,
                  //   color: Color.fromARGB(255, 118, 165, 199),
                  //   splashColor: Colors.grey,
                  //   onPressed: () {},
                  // ),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
