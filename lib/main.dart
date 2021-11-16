// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import './logintext.dart';
import './loginscreen.dart';
import './buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}
// Fokepernyo, LoginScreen
class _LoginScreen extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    void loginFunction() {
      print('Login');
    }

    var proba = ['asd'];

    return MaterialApp(
      title: 'Beerpong Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginScreen()

    );
  }
}
/*class _TournamentScreen extends State<MyApp>{
  @override
  Widget build(BuildContext context) {

    void loginFunction() {
      print('Login');
    }

    var proba = ['asd'];

    return MaterialApp(
        title: 'Beerpong Tracker',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: LoginScreen()

    );
  }
}*/



