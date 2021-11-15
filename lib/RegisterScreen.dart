import 'package:flutter/material.dart';
import './LoginText.dart';
import './LoginScreen.dart';
import './Buttons.dart';


// RegisterScreen
class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void registerFunction() {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()
          ));
    }

    return MaterialApp(
        title: 'Beerpong Tracker - Register',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home:
        Scaffold(
          appBar: AppBar(
            title: const Text('Register Screen'),
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
                    labelText: 'Name',
                  ),
                ),
              ),
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
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password again',
                  ),
                ),
              ),
              Buttons1(),
            ],
          ),
        )
    );
  }
}