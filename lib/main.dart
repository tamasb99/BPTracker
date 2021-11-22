// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// firebase core plugins
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import './beerpontext.dart';
import './loginscreen.dart';
import './buttons.dart';
import './errors.dart';


Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}
// Fokepernyo, LoginScreen
class _LoginScreen extends State<MyApp> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Beerpong Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {

          // Once complete, show your application
          if (snapshot.hasError) {
            return Text('${snapshot.error.toString()}');
          }
          // Otherwise, show something whilst waiting for initialization to complete
          return LoginScreen();
        },
      )
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



