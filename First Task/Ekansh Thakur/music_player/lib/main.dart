import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 15,
      color: Colors.white,
    );
    const int number = 2;
    List<String> cover = [
      "assets/images/joji.jpg",
      "assets/images/album.jpg",
      "assets/images/evanglion.JPG"
    ];
    List<String> song = ["Gimme Love", "After Hours", "One Last Kiss"];
    List<String> artist = ["Joji", "The Weekend", "AmaLee"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            toolbarHeight: 70.0,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leadingWidth: 95,
            leading: GestureDetector(
                child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
                size: 35.0,
              ),
            )),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.more_vert),
                  )),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          padding: const EdgeInsets.all(10.0),
          height: double.infinity,

          width: double.infinity,

          // Below is the code for Linear Gradient.

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(25, 35, 62, 1),
                Color.fromRGBO(78, 88, 123, 20)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 15.0, right: 15, top: 55),
              ),
              Stack(alignment: Alignment.center, children: [
                Image(
                  image: AssetImage(cover[number]),
                  width: 325,
                  height: 325,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: const SizedBox(
                    width: 350,
                    height: 350,
                  ),
                ),
                Card(
                    margin: const EdgeInsets.only(top: 10),
                    shadowColor: Colors.black,
                    elevation: 5.0,
                    clipBehavior: Clip.antiAlias,
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Image(
                      width: double.tryParse('275'),
                      image: AssetImage(cover[number]),
                    )),
              ]),
              Text(
                song[number],
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                artist[number],
                style: GoogleFonts.openSans(textStyle: style),
              ),
              const SizedBox(
                height: 15,
              ),
              DotsIndicator(
                dotsCount: 2,
                position: 0,
                decorator: const DotsDecorator(
                    spacing: EdgeInsets.all(4),
                    size: Size.square(5),
                    activeSize: Size(5, 10),
                    color: Color.fromARGB(88, 98, 121, 0),
                    activeColor: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 60.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.skip_previous_rounded,
                          size: 50.0,
                          color: Colors.white70,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 65, bottom: 50),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          size: 100.0,
                          color: Colors.white70,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 75.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.skip_next_rounded,
                          size: 50.0,
                          color: Colors.white70,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                width: 300,
                height: 4,
                child: LinearProgressIndicator(
                  value: .4,
                  valueColor: null,
                  backgroundColor: Color.fromRGBO(140, 148, 204, 5),
                  color: Color.fromRGBO(49, 73, 196, 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 20,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1:58',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(140, 148, 204, 120)),
                      ),
                      Text(
                        '3:10',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(140, 148, 204, 120)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                        color: Color.fromARGB(200, 148, 148, 204),
                        Icons.shuffle_rounded),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                        color: Color.fromARGB(200, 148, 148, 204),
                        Icons.repeat),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                        color: Color.fromARGB(200, 148, 148, 204),
                        Icons.favorite_border_outlined),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                        color: Color.fromARGB(200, 140, 147, 204),
                        Icons.queue_music_sharp),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
