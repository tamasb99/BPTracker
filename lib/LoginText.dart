import 'package:flutter/material.dart';

class Logintext extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        'Beerpong Tracker',
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      )
    );
  }
}