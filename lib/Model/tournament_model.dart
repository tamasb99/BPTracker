class TournamentModel
{
  late String name;

  TournamentModel(this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'name': name,
    };
    return map;
  }

  TournamentModel.fromMap(Map<String, dynamic> map) {
    name = map['name'];
  }
}