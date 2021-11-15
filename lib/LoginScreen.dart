import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './LoginText.dart';
import './Buttons.dart';

class LoginScreen extends StatelessWidget{
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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Buttons2(),
        ],
      ),
    );
  }
}
