import 'package:bptracker_sqlite/Model/team_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../beerpontext.dart';
import '../Buttons/buttons.dart';
import 'dart:math';
import 'package:bptracker_sqlite/Screens/tournamentdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:bptracker_sqlite/Model/tournament_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bptracker_sqlite/Buttons/buttons.dart';
import  '../Model/team_model.dart';
import  '../Model/user_model.dart';
import  '../Model/match_model.dart';

import 'myprofilescreen.dart';
import 'matchscreen.dart';

/*
class Team extends StatelessWidget {
  const Team(String s, {Key? key, required this.team_name, required this.id})
      : super(key: key);
  final String team_name;
  final int id;

  //print(team_name);
  get teams => List.generate(
        16,
        (i) => Team(
          'Sorkiralyok $i',
          id: i,
          team_name: 'Sorkiralyok $i',
        ),
      );

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center,
      //Center Row contents vertically,
      children: [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(team_name),
        ),
      ],
    );
  }
}

class TournamentScreenDetails extends StatelessWidget {
  const TournamentScreenDetails({Key? key, required this.tournament})
      : super(key: key);

  final tournament;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tournament.name),
      ),

      /*Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: const [
                Team(team_name: 'Tm0'),
                Team(team_name: 'Tm1'),



              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Team(team_name: 'Gyoztes'),
              ],
            ),
          ],
        ),*/
      body: Column(
        children: [
          SizedBox(height: 25.0),
          Text(
            'Search a tournament',
            style: TextStyle(height: null, fontSize: 30),
          ),
          Container(
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount:
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TournamentScreenDetails(
                                  tournament: tournaments[index])))
                    },
                    child: Text('${tournaments[index].name}'),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonGoBack(),
              ButtonAddTournament(),
            ],
          ),
        ],
      ),
    );
  }
}
*/


class Tournamentdetail extends StatefulWidget {
  @override
  _TournamentdetailScreenState createState() => _TournamentdetailScreenState();
}

class _TournamentdetailScreenState extends State<Tournamentdetail> {


   final List<MatchModel> matches = List.generate(
    32,
        (i) => MatchModel('$i', 'team_$i','teamtwo_$i')
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeerpongTracker'),
      ),
      body:Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/wallpaper.jpg"),
      opacity: 0.7,
      fit: BoxFit.cover)),
      child:Column(
        children: [
          SizedBox(height: 25.0),
          Text(
            'Name of Tournament',
            style: TextStyle(height: null, fontSize: 30),
          ),
          Container(
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: matches.length,
              itemBuilder: (BuildContext context, int index) {

                return Center(child: ElevatedButton(
                  onPressed: () =>{ Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MatchScreen()))
                  },
                  child:  Text('${matches[index].team1} - ${matches[index].team2}'),
                ),
                );
              },

              separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonGoBack(),


            ],
          ),
        ],
      ),
      )
    );
  }
}