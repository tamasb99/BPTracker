import 'package:flutter/material.dart';
import './beerpontext.dart';
import './buttons.dart';


// RegisterScreen
class RegisterFormWidget extends StatelessWidget {

  final String? username;
  final String? name;
  final String? email;
  final int? team_id;
  final int? playedgames;
  final ValueChanged<String> onChangedUsername;
  final ValueChanged<String> onChangedName;
  final ValueChanged<String> onChangedEmail;
  /*final ValueChanged<int> onChangedTeamId;
  final ValueChanged<int> onChangedPlayedGames;*/


  const RegisterFormWidget({
    Key? key,
    this.username = '',
    this.name = '',
    this.email = '',
    this.team_id = 0,
    this.playedgames = 0,
    required this.onChangedUsername,
    required this.onChangedName,
    required this.onChangedEmail,
    /*required this.onChangedTeamId,
    required this.onChangedPlayedGames,*/
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildUsername(),
          SizedBox(height: 8),
          buildName(),
          SizedBox(height: 16),
          buildEmail(),
          SizedBox(height: 16),
        ],
      ),
    ),
  );

  Widget buildUsername() => TextFormField(
    maxLines: 1,
    //initialValue: username,
    style: TextStyle(
      color: Colors.deepOrange,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Username',
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (username) =>
    username != null && username.isEmpty ? 'The username cannot be empty' : null,
    onChanged: onChangedUsername,
  );

  Widget buildName() => TextFormField(
    maxLines: 1,
    initialValue: name,
    style: TextStyle(
        color: Colors.deepOrange, fontSize: 18),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Type your Name',
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (username) => username != null && username.isEmpty
        ? 'The Name cannot be empty'
        : null,
    onChanged: onChangedName,
  );

  Widget buildEmail() => TextFormField(
    maxLines: 1,
    initialValue: email,
    style: TextStyle(
      color: Colors.deepOrange,
      fontSize: 24,
    ),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Email',
      hintStyle: TextStyle(color: Colors.black),
    ),
    validator: (username) =>
    username != null && username.isEmpty ? 'The Email cannot be empty' : null,
    onChanged: onChangedEmail,
  );

}
