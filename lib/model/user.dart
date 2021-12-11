final String tableUsers = 'user';

class UserFields {
  static final List<String> values = [
    /// Add all fields
    id, username, name, email, team_id, played_games
  ];

  static final String id = '_id';
  static final String username = 'username';
  static final String name = 'name';
  static final String email = 'email';
  //static final String avatarpath = 'avatarpath';
  static final String team_id = 'team_id';
  static final String played_games= 'played_games';
  //static final String bombak_szama = 'bombak_szama';

}

class User {
  final int? id;
  final String username;
  final String name;
  final String email;
  final int team_id;
  final int? playedgames;

  const User({
    this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.team_id,
    required this.playedgames,
  });

  User copy({
    int? id,
    String? username,
    String? name,
    String? email,
    int? team_id,
    int? playedgames,
  }) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        team_id: team_id ?? this.team_id,
        playedgames: playedgames ?? this.playedgames,
      );

  static User fromJson(Map<String, Object?> json) => User(
    id: json[UserFields.id] as int?,
    username: json[UserFields.username] as String,
    name: json[UserFields.name] as String,
    email: json[UserFields.email] as String,
    team_id: json[UserFields.team_id] as int,
    playedgames: json[UserFields.played_games] as int,
  );

  Map<String, Object?> toJson() => {
    UserFields.id: id,
    UserFields.username: username,
    UserFields.name: name,
    UserFields.email: email,
    UserFields.team_id: team_id,
    UserFields.played_games: playedgames,
  };
}