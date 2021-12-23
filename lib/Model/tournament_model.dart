class TournamentModel
{
  late int tournament_id;
  late String name;

  TournamentModel(this.tournament_id, this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'tournament_id': tournament_id,
      'name': name,
    };
    return map;
  }

  TournamentModel.fromMap(Map<String, dynamic> map) {
    tournament_id = map['tournament_id'];
    name = map['name'];

  }
}