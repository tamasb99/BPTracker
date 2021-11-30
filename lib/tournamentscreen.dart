import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_screen/tournament_details_screen.dart';
import './beerpontext.dart';
import './buttons.dart';

class Tournament
{
  final int id;
  final String name;

  const Tournament(this.id, this.name);
}


class TournamentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // majd adatbazisbol
     //List<String>.generate(100, (i) => "Item $i");

    final tournaments = List.generate(50, (i) =>
        Tournament (i,'Name of the tournament $i'),
    );


    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
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
                  labelText: 'Search for a tournament',
                  // majd ide search function
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: tournaments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Tournament $index',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder:
                                        (context) => TournamentScreenDetails(tournament: tournaments[index])));
                                  }),
                          ],
                        ),
                    ),
                  );
                },
              ),
            ),
            tournament_buttons(),
          ],
        ),
      ),
    );
  }
}
