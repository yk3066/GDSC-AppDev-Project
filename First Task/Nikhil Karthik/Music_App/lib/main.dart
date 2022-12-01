import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MusicApp()),
    );
  }
}
// const t= MediaQuery.of(context).size.width*(0.9),
class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0x9beeb4fc),
              Color(0x747e65e5),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.expand_more, color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.width*(0.9),
              width: MediaQuery.of(context).size.width*(0.9),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white38,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.scdn.co/image/ab67616d0000b2732f2623c93d48a736c6f23cef"),
                      fit: BoxFit.cover)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Believer",
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 35)),
                Text("Imagine Dragons",
                    style: TextStyle(color: Colors.white70, fontSize: 15))
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width*(0.85),
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Positioned(
                    left: 80,
                    top: 28,
                    child: Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )),
                const Positioned(
                    left: 0,
                    top: 55,
                    child: Text("00:51",
                        style: TextStyle(color: Colors.white70, fontSize: 15))),
                const Positioned(
                    right: 0,
                    top: 55,
                    child: Text("03:24",
                        style: TextStyle(color: Colors.white70, fontSize: 15))),
                Positioned(
                    left: 0,
                    top: 33,
                    child: Container(
                      height: 7,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    child:Icon(Icons.favorite,color: Colors.red,)
                  ),
                  SizedBox(
                      child:Icon(Icons.skip_previous_rounded,color: Colors.white70,size: 50,)
                  ),
                  SizedBox(
                      child:Icon(Icons.pause_circle_filled_rounded,color: Colors.cyanAccent,size:60)
                  ),
                  SizedBox(
                      child:Icon(Icons.skip_next_rounded,color: Colors.white70,size: 50,)
                  ),
                  SizedBox(
                      child:Icon(Icons.file_download_outlined,color: Colors.white70,size:30)
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width:320,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
