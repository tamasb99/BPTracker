import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './beerpontext.dart';
import './buttons.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TournamentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(100, (i) => "Item $i");

    /*final dbRef = FirebaseDatabase.instance.reference();
    String displaytext = dbRef.child('prop').key;
    items.add(displaytext);*/

    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logintext(),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search for a tournament',
                  // majd ide search function
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
            tournament_buttons(),
          ],
        ),
      ),
    );
  }
}
