import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/tournamentscreen.dart';
import './beerpontext.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
        children: <Widget>[
          Logintext(),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(onPressed: () => () {},
                    child: Text('Log in')),

              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                    onPressed: () => () {},
                    // ide majd a register funkcio kell
                    child: Text('Register')),
              ),
              ElevatedButton(
                  onPressed: () async {
                  },
                  child: Text('Sign in as a Guest'))
            ],
          ),
        ],
      ),
    );
  }
}

