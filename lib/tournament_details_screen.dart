import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './beerpontext.dart';
import './buttons.dart';


class TournamentScreenDetails extends StatelessWidget {
  const TournamentScreenDetails({Key? key, required this.tournament}) : super(key: key);

  final tournament;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tournament.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(tournament.name),
          ],
        ),
      ),
    );
  }
}
