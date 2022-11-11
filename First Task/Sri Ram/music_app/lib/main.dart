import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Now Playing'),
          centerTitle: true,
          // backgroundColor: Colors.black54,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          // backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.blueAccent, Colors.red],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50.0),
                Center(
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.scdn.co/image/ab67616d0000b2739bc8c7e741fcf8373079ca7d')),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                Column(
                  children: const [
                    Text(
                      'Stereo Hearts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'by Gym Class Heroes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '0:00',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(width: 100.0),
                    Icon(
                      Icons.shuffle,
                      size: 30.0,
                    ),
                    SizedBox(width: 38.0),
                    Icon(
                      Icons.repeat,
                      size: 30.0,
                    ),
                    SizedBox(width: 100.0),
                    Text('4:49', style: TextStyle(fontSize: 18.0))
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 100.0,
                      child: Divider(
                        height: 8,
                        thickness: 8,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 250.0,
                      child: Divider(
                        height: 8,
                        thickness: 8,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 45.0,
                          color: Colors.black,
                          icon: Icon(Icons.skip_previous),
                          onPressed: () {},
                        ),
                        SizedBox(width: 38.0),
                        IconButton(
                          iconSize: 52.0,
                          color: Colors.black,
                          icon: Icon(Icons.play_arrow),
                          onPressed: () {},
                        ),
                        SizedBox(width: 38.0),
                        IconButton(
                          iconSize: 45.0,
                          color: Colors.black,
                          icon: Icon(Icons.skip_next),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
