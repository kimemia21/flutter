import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:root_user/modules/contentClasses.dart';
import 'package:root_user/widgets/moviesCard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  MyApp({super.key});

  static const String my_banner = "katana";
  static const String my_title = "Shows To Watch";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: MyApp.my_banner,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Icon(
              Icons.home,
              size: 35,
              color: Colors.red,
            ),
            centerTitle: true,
            title: Text(
              MyApp.my_title,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                  fontFamily: "flix",
                  letterSpacing: 1),
            ),
            actions: [
              Icon(
                Icons.more_vert,
                size: 35,
                color: Colors.red,
              )
            ],
          ),
          body: home_page(context),
        ));
  }
}

Widget home_page(context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      body: homepage_content(context),
    ),
  );
}

Widget homepage_content(context) {
  List<MyMovies> flim = [];

  MyMovies moviesObj = new MyMovies();

  moviesObj.title = "鋸人. 日本漫";
  moviesObj.description = '''

  Chainsaw Man follows the story of Denji, 
  an impoverished young man who makes a contract
  that fuses his body with that of a dog-like 
  devil named Pochita, granting him the ability to 
  transform parts of his body into chainsaws. 


''';

  moviesObj.imageurl = "assets/images/chainSaw.jpg";
  

  flim.add(moviesObj);

  moviesObj = new MyMovies();

  moviesObj.title = " 進撃の巨人,";
  moviesObj.description = '''

Chainsaw Man follows the story of Denji, 
  an impoverished young man who makes a contract
  that fuses his body with that of a dog-like 
  devil named Pochita, granting him the ability to 
  transform parts of his body into chainsaws. 


''';

  moviesObj.imageurl = "assets/images/chainSaw2.png";

  flim.add(moviesObj);

  moviesObj = new MyMovies();

  moviesObj.title = "鋸 本漫";
  moviesObj.description = '''
A fourth and final season premiered in December 2020, 
airing 16 episodes in its first part. A second part consisting
of 12 episodes aired from January to April 2022, and a third 
and final part will air in two halves; the first half will
premiere in March 2023.''';

   moviesObj.imageurl = "assets/images/aotFinal.jpg";

  flim.add(moviesObj);

  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: flim.length,
      itemBuilder: (context, index) {
        return Container(
          margin:EdgeInsets.only(top: 20),
          child:moviesCard(flim.elementAt(index), context),

        );
      });
}
