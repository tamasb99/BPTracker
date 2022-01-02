import 'package:bptracker_sqlite/Model/team_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class WinnerScreen extends StatefulWidget {
  @override
  _WinnerScreenState createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {



    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BeerpongTracker'),
        ),
        body:Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wallpaper.jpg"),
                  opacity: 0.7,
                  fit: BoxFit.cover)),
          child:Column(
            children: [
              SizedBox(height: 25.0),
              Text(
                'The winner team is:',
                style: TextStyle(height: null, fontSize: 30),
              ),
              ElevatedButton(onPressed: ()=>{},
                child: new Text("Demo",style: TextStyle(color: Colors.white, fontSize: 18),)
              )
            ]
      )
        )
    );
  }
}