import 'package:bptracker_sqlite/Model/user_model.dart';

class MatchModel {
  late String match_id;
  late String team1; // majd meg kell valtoztatin userModel-re
  late String team2; //

  MatchModel(this.match_id, this.team1, this.team2);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'team_id': match_id,
      'player1': team1,
      'player2': team2
    };
    return map;
  }

  MatchModel.fromMap(Map<String, dynamic> map) {
    match_id = map['team_id'];
    team1 = map['team1'];
    team2 = map['team2'];
  }

  String get_id(){
    return this.match_id;
  }
}