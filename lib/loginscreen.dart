import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proba_bpt/services/auth.dart';
import 'package:proba_bpt/tournamentscreen.dart';
import './beerpontext.dart';


import 'services/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthService _auth = AuthService();

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
                    dynamic result = await _auth.signInAnon();
                    if (result == null)
                      {
                        print('error');
                      }
                    else
                      {
                        print('signed in');
                        print(result);
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => TournamentScreen()));
                      }
                  },
                  child: Text('Sign in as a Guest'))
            ],
          ),
        ],
      ),
    );
  }
}

