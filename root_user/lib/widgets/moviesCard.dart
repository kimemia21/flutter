import 'package:flutter/material.dart';
import 'package:root_user/modules/contentClasses.dart';

moviesCard(MyMovies flim, BuildContext context) {
  return Column(
    children: [
    
      Image.asset(
        flim.imageurl,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),

       Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 10,),
        child: 
        
        
        Text(
          flim.title,
          style: TextStyle(
              fontFamily: "flix",
              fontSize: 23,
              letterSpacing:1,
              color: Colors.white),
        ),
      ),


      Container(
        transformAlignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 10),
          child: Text(
        flim.description,
        style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w100, fontStyle: FontStyle.normal, fontSize: 14,letterSpacing: 2),
      )),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.reviews,
                  size: 24,
                  color: Colors.red,
                ),
                Text(
                  "Reviews",
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.watch_later,
                  size: 24,
                  color: Colors.red,
                ),
                Text(
                  "Watch later",
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.download,
                  size: 24,
                  color: Colors.red,
                ),
                Text(
                  "download",
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.bookmark,
                  size: 24,
                  color: Colors.red,
                ),
                Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}





// String review = "";
//   String watch_later = "";
//   String download = "";
//   String Save = "";