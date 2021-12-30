import 'package:bptracker_sqlite/Model/user_model.dart';

class TeamModel {
  late String team_id;
  late String team_name;
  late String player1; // majd meg kell valtoztatin userModel-re
  late String player2; //

  TeamModel(this.team_id, this.team_name, this.player1, this.player2);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'team_id': team_id,
      'team_name': team_name,
      'player1': player1,
      'player2': player2
    };
    return map;
  }

  TeamModel.fromMap(Map<String, dynamic> map) {
    team_id = map['team_id'];
    team_name = map['team_name'];
    player1 = map['player1'];
    player2 = map['player2'];
  }

  String get_id(){
    return this.team_id;
  }
}
