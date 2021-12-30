import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'tournamentdetailsscreen.dart';
import '../beerpontext.dart';
import '../Buttons/buttons.dart';
import 'package:countdown_flutter/countdown_flutter.dart';


class MatchScreen extends StatefulWidget {
  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {

   var point1=0; //elso csapat pontok
   var  point2=0; //masodik csapat pontok
   var pl1_1=0; //elso csapat elso jatekos pontok
   var pl1_2=0; // elso csapat masodik jatekos pontok
   var pl2_1=0; //masodik csapat elso jatekos pontok
   var pl2_2=0; //masodik csapat masodik jatekos pontok

   int endTime=DateTime.now().millisecondsSinceEpoch+1000*30;



   void incrementCounter3() {
     setState(() {
       pl1_1++;
       point1++;
     });
   }
   void incrementCounter4() {
     setState(() {
       pl1_2++;
       point1++;
     });
   }
   void incrementCounter5() {
     setState(() {
       pl2_1++;
       point2++;
     });
   }
   void incrementCounter6() {
     setState(() {
       pl2_2++;
       point2++;
     });
   }

   void checkwinner(){
     if (point1==10 || point2==10 ) { }
   }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeerpongTracker'),
      ),
      body: Column(
        children: [
          SizedBox(height: 25.0),
          Text(
            'Name of the match',
            style: TextStyle(height: null, fontSize: 30),
          ),
          CountdownFormatted(
            duration: Duration(minutes: 12),
            builder: (BuildContext ctx, String remaining) {
              return Text(remaining); // 00:12:00
            },
          ),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:[
           ElevatedButton(onPressed: ()=>{},
             child: new Text("Team1 points: $point1")
         ),
          ElevatedButton(onPressed: ()=>{},
              child: new Text("Team2 points: $point2")
          ),
          ]
         ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter3()
          },
              child: new Text("Team1 player1 points: $pl1_1")
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter4()
          },
              child: new Text("Team1 player2 points: $pl1_2")
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter5()
          },
              child: new Text("Team2 player1 points: $pl2_1")
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter6()
          },
              child: new Text("Team2 player2 points: $pl2_2")
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonGoBack(),


            ],
          ),
        ],
      ),
    );
  }
}