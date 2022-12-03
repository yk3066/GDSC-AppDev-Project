


import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(),
      home:Home(),
      );
  }
}
class Home extends StatefulWidget{
  @override 
  _HomeState createState() => _HomeState();

}
class _HomeState extends State<Home>{
  var favoriteStar= false;
  var favoriteHeart=false;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                 Color.fromARGB(255, 13, 109, 206),
                Color.fromARGB(255, 91, 200, 240),
              ]
            ),
          ),
        ),
        elevation: 0.0,
        title: Text('Now playing'),
        centerTitle: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
        onPressed: () {},),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
           IconButton(
            icon: Icon(favoriteStar ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                if (favoriteStar){
                  favoriteStar=false;
                }else{
                  favoriteStar=true;
                }
              });
            },
          ),
        ]
      ),
      body: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 13, 109, 206),
                Color.fromARGB(255, 91, 200, 240),
              ]
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SizedBox(height:30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child:Image(
                      image: Song().albumCover,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * .8,
                    ),
                  ),
                ],),
                  Expanded(
                    child:Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Song().title,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 25.0,),
                              ),
                              IconButton(
            icon: Icon(favoriteHeart ? Icons.favorite : Icons.favorite_border,color:Colors.red),
            onPressed: () {
              setState(() {
                if (favoriteHeart){
                  favoriteStar=false;
                }else{
                  favoriteHeart=true;
                }
              });
            },
          ),


                          ],),
                          Row(children: [
                            Text(Song().singerName,
                            style:TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16.0,
                              ),
                              ),
                          ],
                          ),
                          SizedBox(height:30.0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child:LinearProgressIndicator(backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 23, 160, 115)),
                            value:.4,
                            minHeight: 10.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text("1:24", style: TextStyle(color:Colors.black38,),),
                              Text("1:48", style: TextStyle(color:Colors.black38,),),
                            ],),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon:Icon(Icons.arrow_back_ios_new_outlined, color:Colors.white,),
                                onPressed: (){},),
                                IconButton(
                                  iconSize: 70.0,
                                icon:Icon(Icons.play_arrow_rounded, color:Colors.white,),
                                onPressed: (){},),
                                IconButton(
                                icon:Icon(Icons.arrow_forward_ios_outlined, color:Colors.white,),
                                onPressed: (){},),
                            ],),

                          SizedBox(height: 50.0),

                        ],)),)
            ],),

            ),

      ),
    );
  }
}

class Song{
  String title = "Wolves";
  String singerName = "Selena Gomez";
  AssetImage albumCover= AssetImage('assets/cover.jpeg');
}