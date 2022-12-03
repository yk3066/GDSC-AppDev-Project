import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
          body:LemonPage() ,
        ) ,
    )
  );
}



class LemonPage extends StatefulWidget {
  const LemonPage({Key? key}) : super(key: key);

  @override
  State<LemonPage> createState() => _LemonPageState();
}

class _LemonPageState extends State<LemonPage> {
  String str = "Lemon tree";
  int num = 1;
  int extra = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 180),
          Container(
            child: Text(
              getString(num),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 30),

          Container(
            child: SizedBox(
              height: 220,
              width: 160 ,
              child: TextButton(
                onPressed: (){
                    setState(() {
                      extra++;
                      if(extra>=3 && extra<6){

                      }

                      else {
                        num++;
                      }
                      if(extra==8){
                        extra = 1;
                        num=1;

                      }
                    });
                },
                  child:Image.asset("images/lemon$num.png"),
              ),
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                )
          )
          )
        ],
      ),
    );
  }

  String getString(num) {
    switch(num){
      case 1: return "Tap to the lemon tree to select a lemon";

      case 2: return "Keep tapping the lemon to squeeze it";
      case 3: return "Tap to the lemonade to drink it";
      case 4: return "Tap the empty glass to start again";

    }
    return str;
  }
}

