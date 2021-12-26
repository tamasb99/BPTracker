/*
import 'package:bptracker_sqlite/Model/tournament_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  static late Database _db;

  static const String DB_Name = 'test1.db';
  static const String Table_Tournament = 'tournament';
  static const int Version = 1;

  static const String C_TournamentName = 'name';

  Future<Database> get db async {
     */
/*if (_db != null) {
      return _db;
    }*//*

    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_Tournament ("
        " $C_TournamentName TEXT, "
        " PRIMARY KEY ($C_TournamentName)"
        ")");
  }



*/
/*
  Future<int> updateUser(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.update(Table_User, user.toMap(),
        where: '$C_UserID = ?', whereArgs: [user.user_id]);
    return res;
  }
*//*

  */
/*
  Future<int> deleteUser(String user_id) async {
    var dbClient = await db;
    var res = await dbClient
        .delete(Table_User, where: '$C_UserID = ?', whereArgs: [user_id]);
    return res;
  }
   *//*

}
*/
