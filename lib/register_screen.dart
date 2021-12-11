import 'package:bptracker_sqlite/register_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:bptracker_sqlite/db/beerpong_database.dart';
import 'package:bptracker_sqlite/model/user.dart';
import 'package:bptracker_sqlite/widget/note_form_widget.dart';


class AddUser extends StatefulWidget {
  final User? user;

  const AddUser({
    Key? key,
    this.user,
  }) : super(key: key);
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  late String username;
  late String name;
  late String email;
  late int team_id;
  //late int playedgames;
  int? playedgames;

  @override
  void initState() {
    super.initState();

    username = widget.user?.username ?? '';
    name = widget.user?.name ?? '';
    email = widget.user?.email ?? '';
    team_id = widget.user?.team_id ?? 0;
    playedgames = widget.user?.playedgames ?? 0;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      actions: [buildButton()],
    ),
    body: Form(
      key: _formKey,
      child: RegisterFormWidget(
        username : username,
        name: name,
        email: email,
        team_id: team_id,
        playedgames: playedgames,

        onChangedUsername: (username) =>
            setState(() => this.username = username),
        onChangedName: (name) => setState(() => this.name = name),
        onChangedEmail: (email) => setState(() => this.email = email),
        onChangedTeamId: (team_id) =>
            setState(() => this.team_id = team_id),
        onChangedPlayedGames: (played_games) =>
            setState(() => this.playedgames = played_games),
      ),
    ),
  );

  Widget buildButton() {
    final isFormValid = username.isNotEmpty && name.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateNote,
        child: Text('Register'),
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.user != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final user = widget.user!.copy(
      username: username,
      name: name,
      email: email,
      team_id: team_id,
      playedgames: playedgames,
    );

    await BeerpongDatabase.instance.update(user);
  }

  Future addNote() async {
    final user = User(
      //id: 1,
      username: username,
      name: name,
      email: email,
      team_id: team_id,
      playedgames: playedgames,
    );
    print('AAAAAAAA');
    await BeerpongDatabase.instance.create(user);
  }
}