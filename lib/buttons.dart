import 'package:flutter/material.dart';
import 'package:proba_bpt/tournamentscreen.dart';
import 'main.dart';
import './registerscreen.dart';


class GoBackButton extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp())),
              child: Text('Go back')
          ),
        ),
      ],
    );
  }
}

class RegisterButton extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              // ide majd a register funkcio kell
              child: Text('Register')
          ),
        );
  }
}

class tournament_buttons extends StatelessWidget {
  const tournament_buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TournamentScreen())),
                  child: const Text('Join Tournament')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => RegisterScreen())),
                  // ide majd a view as spectator funkcio kell
                  child: const Text('View as a spectator')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TournamentScreen())),
                  child: const Text('Create Tournament')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => RegisterScreen())),
                  // ide majd a register funkcio kell
                  child: const Text('Create Game')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
