import 'package:bptracker_sqlite/Screens/addtournamentscreen.dart';
import 'package:bptracker_sqlite/Screens/homescreen.dart';
import 'package:flutter/material.dart';
import '../screens/tournamentscreen.dart';

import '../main.dart';

class ButtonGoBack extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyApp())),
        child: Text('Go back',style: TextStyle(color: Colors.white, fontSize: 18),)
    );
  }
}

class ButtonGoHome extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndexScreen())),
        child: Text('Go HomePage',style: TextStyle(color: Colors.white, fontSize: 18),)
    );
  }
}
class ButtonAddTournament extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddTournament())),
        child: Text('Add a tournament')
    );
  }
}



class ButtonsRegisterGoBack extends StatelessWidget{

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
              onPressed: () /*=> Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => RegisterScreen(
                      onChangedUsername: onChangedUsername,
                      onChangedName: onChangedName,
                      onChangedEmail: onChangedEmail,
                      onChangedTeamId: onChangedTeamId,
                      onChangedPlayedGames: onChangedPlayedGames),
              )
              ),*/
                {},
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
              context, MaterialPageRoute(
              builder: (context) => TournamentScreen()
          )
          ),
              child: Text('Log in')),

        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () => {},
              child: Text('Register')
        ),
        ),
       /* ElevatedButton(
            onPressed: () async {
            },
            child: Text('Sign in as a Guest'))*/
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => TournamentScreen()
          )
          ),
              child: Text('Guest')),

        ),
      ],
    );
  }
}

class tournament_buttons extends StatelessWidget {
  const tournament_buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // return Row(
   //   mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
    //  crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
   return  GridView.count(
      crossAxisCount: 2,
     shrinkWrap: true,
     padding: const EdgeInsets.all(18.0),

      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => TournamentScreen())),
              child: const Text('Join Tournament')),

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {},
              // ide majd a view as spectator funkcio kell
              child: const Text('View as a guest')),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => TournamentScreen())),
              child: const Text('New Tournament')),

        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {},
              // ide majd a create game funkcio kell
              child: const Text('New Game')),
        ),
      ],

   );
  }
}
