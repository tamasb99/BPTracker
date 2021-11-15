import 'package:flutter/material.dart';
import 'main.dart';
import './RegisterScreen.dart';

class Buttons1 extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp())),
              child: Text('Go back')),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              // ide majd a register funkcio kell
              child: Text('Register')),
        ),
      ],
    );
  }
}

class Buttons2 extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp())),
              child: Text('Log in')),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              // ide majd a register funkcio kell
              child: Text('Register')),
        ),
      ],
    );
  }
}