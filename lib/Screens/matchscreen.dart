import 'dart:core';
import 'dart:core';

import 'package:bptracker_sqlite/Screens/winnerscreen.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_countdown_timer/current_remaining_time.dart';
//import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'tournamentdetailsscreen.dart';
import '../beerpontext.dart';
import '../Buttons/buttons.dart';
//import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:timer_count_down/timer_controller.dart';


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

   final CountdownController _controller =
   new CountdownController(autoStart: true);


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
     if (point1>10 || point2>10 ) {Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => WinnerScreen()),
     );}
   }


   @override
  Widget build(BuildContext context) {
    var pressAttention;
    return Scaffold(
      appBar: AppBar(
        title: Text('BeerpongTracker'),
      ),
      body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/wallpaper.jpg"),
      opacity: 0.7,
      fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children:[
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:[
           ElevatedButton(onPressed: ()=>{    checkwinner()},
             child: new Text("Team1 points: $point1",style: TextStyle(color: Colors.white, fontSize: 18),)
         ),
          ElevatedButton(onPressed: ()=>{    checkwinner()},
              child: new Text("Team2 points: $point2",style: TextStyle(color: Colors.white, fontSize: 18),)
          ),
          ]
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            ElevatedButton(onPressed: ()=>{
            incrementCounter3()
          },
              child: new Text("Team1 player1 points: $pl1_1",style: TextStyle(color: Colors.white, fontSize: 18))
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter4()
          },
              child: new Text("Team1 player2 points: $pl1_2",style: TextStyle(color: Colors.white, fontSize: 18))
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter5()
          },
              child: new Text("Team2 player1 points: $pl2_1",style: TextStyle(color: Colors.white, fontSize: 18))
          ),
          ElevatedButton(onPressed: ()=>{
            incrementCounter6()
          },
              child: new Text("Team2 player2 points: $pl2_2",style: TextStyle(color: Colors.white, fontSize: 18))
          ),
      ]
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Start
          ElevatedButton(
            child: Text('Start',style: TextStyle(color: Colors.white, fontSize: 18),),
            onPressed: () {
              _controller.start();
            },
          ),
          // Pause
          ElevatedButton(
            child: Text('Pause',style: TextStyle(color: Colors.white, fontSize: 18),),
            onPressed: () {
              _controller.pause();
            },
          ),
          // Resume
          ElevatedButton(
            child: Text('Resume',style: TextStyle(color: Colors.white, fontSize: 18),),
            onPressed: () {
              _controller.resume();
            },
          ),
          // Stop
          ElevatedButton(
            child: Text('Restart',style: TextStyle(color: Colors.white, fontSize: 18),),
            onPressed: () {
              _controller.restart();
            },
          ),
        ],
      ),
          Countdown(
            controller: _controller,
            seconds: 720,
            build: (_, double time) => Text(
              '${((time/60)-1).round()}:${(time%60).round()}',
              style: TextStyle(
                fontSize: 100,
                //color: Colors.grey
              ),
            ),
            interval: Duration(milliseconds: 100),
            onFinished: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Timer is done!'),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           //   ButtonGoBack(),


            ],
          ),
        ],
      ),
      )
    );
  }
}