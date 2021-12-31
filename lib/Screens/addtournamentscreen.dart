import 'package:bptracker_sqlite/Comm/com_helper.dart';
import 'package:bptracker_sqlite/Comm/gen_login_signup_header.dart';
import 'package:bptracker_sqlite/Comm/gen_text_form_field.dart';
import 'package:bptracker_sqlite/Screens/homescreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bptracker_sqlite/Databasehandler/dbhelper.dart';
import 'package:bptracker_sqlite/Model/tournament_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bptracker_sqlite/Buttons/buttons.dart';

import 'myprofilescreen.dart';

class AddTournament extends StatefulWidget {
  @override
  _AddTournamentState createState() => _AddTournamentState();
}

class _AddTournamentState extends State<AddTournament> {
  final _formKey = new GlobalKey<FormState>();
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  DbHelper? dbHelper;
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
      _conTournamentName.text = sp.getString("user_name");
    });
  }

  signUp() async {
    String tname = _conTournamentName.text;

    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      TournamentModel tModel = TournamentModel(tname);
      await dbHelper!.saveDataTournament(tModel).then((userData) {
        alertDialog(context, "Successfully Saved");
        print('Jooo');
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => IndexScreen()));
      }).catchError((error) {
        print(error);
        print('Error!!');
        alertDialog(context, "Error: Data Save Fail");
      });
    }
  }

  //majd adatbazisbol
  final List<TournamentModel> tournaments = List.generate(
    20,
        (i) => TournamentModel('Name of the tournament $i'),
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
      child:Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.0),
                  getTextFormField(
                      controller: _conTournamentName,
                      icon: Icons.drag_indicator,
                      hintName: 'Tournament Name'),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: FlatButton(
                      child: Text(
                        'Add Tournament',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: signUp,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      )
    );
  }
}
