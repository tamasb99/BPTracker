import 'package:flutter/material.dart';
import '/tournamentscreen.dart';

import 'main.dart';
import './registerscreen.dart';

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

class ButtonLoginRegister extends StatelessWidget{

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
              context, MaterialPageRoute(builder: (context) => TournamentScreen())),
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
        ElevatedButton(
            onPressed: () async {

            },
            child: Text('Sign in as a Guest'))
      ],
    );
  }
}

class tournament_buttons extends StatelessWidget {
  const tournament_buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => TournamentScreen())),
              child: const Text('Join Tournament')),

        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              // ide majd a view as spectator funkcio kell
              child: const Text('View as a spectator')),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => TournamentScreen())),
              child: const Text('Create Tournament')),

        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              // ide majd a register funkcio kell
              child: const Text('Create Game')),
        ),
      ],
    );
  }
}
