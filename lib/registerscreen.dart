import 'package:flutter/material.dart';
import './logintext.dart';
import './loginscreen.dart';
import './buttons.dart';


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
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
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
              const Padding(
                padding: EdgeInsets.all(18.0),
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