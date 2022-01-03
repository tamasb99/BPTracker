import 'package:flutter/material.dart';

import 'Screens/loginscreen.dart';

void main() async {
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
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.grey,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red,
            elevation: 0,
          ),
        ),
        home: LoginForm(),
      );
}
