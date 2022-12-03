import 'package:flutter/material.dart';
import 'package:music_app_task1/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade700,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Text(
                      "P   L   A   Y   L   I   S   T",
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                NewBox(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("images/music_aa.jpg")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "NIGHT CHANGES",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Jamie Scott",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("3:14")
                  ],
                ),
                const SizedBox(height: 25),
                NewBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.black,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                        child: NewBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 45,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: NewBox(
                              child: Icon(
                                Icons.play_arrow,
                                size: 55,
                              ),
                            )),
                      ),
                      Expanded(
                        child: NewBox(
                            child: Icon(
                          Icons.skip_next,
                          size: 45,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
