// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:bptracker_sqlite/page/loginscreen.dart';
import 'package:bptracker_sqlite/page/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static final String title = 'BeerpongTracker';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    themeMode: ThemeMode.light,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
    ),
    home: LoginScreen(),
  );
}

