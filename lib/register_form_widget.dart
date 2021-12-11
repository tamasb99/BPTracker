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
  final ValueChanged<int> onChangedTeamId;
  final ValueChanged<int> onChangedPlayedGames;


  const RegisterFormWidget({
    Key? key,
    this.username = 'user',
    this.name = 'useruser',
    this.email = 'user@user.com',
    this.team_id = 0,
    this.playedgames = 0,
    required this.onChangedUsername,
    required this.onChangedName,
    required this.onChangedEmail,
    required this.onChangedTeamId,
    required this.onChangedPlayedGames,
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
          buildTeamId(),
          SizedBox(height: 16),
        ],
      ),
    ),
  );

  Widget buildUsername() => TextFormField(
    maxLines: 1,
    initialValue: username,
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
    validator: (title) =>
    title != null && title.isEmpty ? 'The title cannot be empty' : null,
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
    validator: (title) => title != null && title.isEmpty
        ? 'The description cannot be empty'
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
    validator: (title) =>
    title != null && title.isEmpty ? 'The title cannot be empty' : null,
    onChanged: onChangedEmail,
  );

  Widget buildTeamId() => Row(
    children: [
      Text('Teamid(egyelore csak igy)'),
      Expanded(
        child: Slider(
          value: (team_id ?? 0).toDouble(),
          min: 0,
          max: 5,
          divisions: 5,
          onChanged: (number) => onChangedTeamId(number.toInt()),
        ),
      )
    ],
  );


}
