import 'package:flutter/material.dart';
import 'constants.dart';
import 'top.dart';
import 'slider.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor1,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaddingTop(
                      icon: Icons.menu, left: 20, top: 5, right: 0, bottom: 0),
                  PaddingTop(
                      icon: Icons.expand_more,
                      left: 0,
                      top: 5,
                      right: 20,
                      bottom: 0)
                ],
              ),
              Card(
                  margin: const EdgeInsets.all(30),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 300,
                  shadowColor: kColorWhite,
                  child: const Image(
                    image: AssetImage('images/perfect.jpg'),
                  )),
              MySlider(
                value: 50,
                min: 0,
                max: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildPadding(24, 0, '1:13'),
                  buildPadding(0, 24, '-3:10'),
                ],
              ),
              const Text(
                "PERFECT",
                style: TextStyle(
                    color: kColorWhite,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const Text('ED SHEERAN',
                  style: TextStyle(
                    color: kPrimaryColor2,
                    fontSize: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.skip_previous,
                    color: kPrimaryColor2,
                    size: 70,
                  ),
                  Icon(
                    Icons.pause_circle,
                    color: kColorWhite,
                    size: 100,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: kPrimaryColor2,
                    size: 70,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: BottomAppBar(
                  elevation: 25,
                  color: kBottomAppBarColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: MySlider(value: 50, min: 0, max: 100),
                      ),
                      const Icon(
                        Icons.bar_chart,
                        color: kPrimaryColor2,
                        size: 80,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Padding function for timer
  Padding buildPadding(double left, double right, String text) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: Text(
        text,
        style: const TextStyle(color: kColorWhite),
      ),
    );
  }
}
