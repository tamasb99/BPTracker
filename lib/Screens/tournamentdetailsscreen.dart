import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Buttons/buttons.dart';
import 'package:bptracker_sqlite/Buttons/buttons.dart';
import '../Model/match_model.dart';

import 'matchscreen.dart';

class Tournamentdetail extends StatefulWidget {
  @override
  _TournamentdetailScreenState createState() => _TournamentdetailScreenState();
}

class _TournamentdetailScreenState extends State<Tournamentdetail> {
  final List<MatchModel> matches =
      List.generate(32, (i) => MatchModel('$i', 'team_$i', 'teamtwo_$i'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BeerpongTracker'),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wallpaper.jpg"),
                  //opacity: 0.7,
                  fit: BoxFit.cover)),
          child: Column(
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
                    return Center(
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MatchScreen()))
                        },
                        child: Text(
                          '${matches[index].team1} - ${matches[index].team2}',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
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
        ));
  }
}
