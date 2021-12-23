import 'package:flutter/material.dart';
import 'package:bptracker_sqlite/Comm/com_helper.dart';
import 'package:bptracker_sqlite/Comm/gen_login_signup_header.dart';
import 'package:bptracker_sqlite/Comm/gen_text_form_field.dart';
import 'package:bptracker_sqlite/DatabaseHandler/DbHelper.dart';
import 'package:bptracker_sqlite/Model/user_model.dart';
import 'package:bptracker_sqlite/Screens/registerscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'myprofilescreen.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeerpongTracker'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                genLoginSignupHeader('Search tournaments!'),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  //child: 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
