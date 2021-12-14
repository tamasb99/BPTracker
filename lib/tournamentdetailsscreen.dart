import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './beerpontext.dart';
import './buttons.dart';

class Team extends StatelessWidget{
  const Team({Key? key, required this.team_name}) : super(key: key);
  final String team_name;
  //print(team_name);
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
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
  const TournamentScreenDetails({Key? key, required this.tournament}) : super(key: key);

  final tournament;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tournament.name),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: const [
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
                Team(team_name: 'Sorkiralyok'),
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
        ),

    );
  }
}
