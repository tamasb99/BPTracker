import 'package:flutter/material.dart';
import 'package:flutter_login_screen/tournamentscreen.dart';
import 'main.dart';
import './registerscreen.dart';


class error_init_firebase extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Error',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
