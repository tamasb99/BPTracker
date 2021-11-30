import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './beerpontext.dart';
import './buttons.dart';


class TournamentScreenDetails extends StatelessWidget {
  const TournamentScreenDetails({Key? key, required this.tournament_id}) : super(key: key);

  final tournament_id;
  @override
  Widget build(BuildContext context) {
    //print(tournament_id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Tournament $tournament_id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logintext(),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tournament',
                  // majd ide search function
                ),
              ),
            ),
            tournament_buttons(),
          ],
        ),
      ),
    );
  }
}
