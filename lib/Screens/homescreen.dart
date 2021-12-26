import 'package:bptracker_sqlite/Screens/tournamentdetailsscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bptracker_sqlite/Databasehandler/dbhelpertournament.dart';
import 'package:bptracker_sqlite/Model/tournament_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bptracker_sqlite/Buttons/buttons.dart';

import 'myprofilescreen.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final _formKey = new GlobalKey<FormState>();
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  DbHelper? dbHelper;
  final _conTournamentId = TextEditingController();
  final _conDelTournamentId = TextEditingController();
  final _conTournamentName = TextEditingController();

  @override
  void initState() {
    super.initState();
    var result = _getAllTournament();
    print(result);
    dbHelper = DbHelper();
  }

  Future<void> _getAllTournament() async {
    final SharedPreferences sp = await _pref;

    setState(() {
      _conTournamentId.text = sp.getString("user_id");
      _conDelTournamentId.text = sp.getString("user_id");
      _conTournamentName.text = sp.getString("user_name");
    });
  }

  //majd adatbazisbol
  final List<TournamentModel> tournaments = List.generate(
    20,
    (i) => TournamentModel(i, 'Name of the tournament $i'),
  );

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
            'Search a tournament',
            style: TextStyle(height: null, fontSize: 30),
          ),
          Container(
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: tournaments.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.deepOrange,
                  child: Center(child: Text('${tournaments[index].name}')),
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
