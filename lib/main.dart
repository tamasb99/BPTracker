// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:proba_bpt/wrapper.dart';
import './beerpontext.dart';
import './loginscreen.dart';
import './buttons.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Wrapper(),
    );
  }
}


/*
class _LoginScreen extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Beerpong Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginScreen()
    );
  }
}
*/

