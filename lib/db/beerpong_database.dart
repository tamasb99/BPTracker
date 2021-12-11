import 'package:bptracker_sqlite/model/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class BeerpongDatabase {
  static final BeerpongDatabase instance = BeerpongDatabase._init();

  static Database? _database;

  BeerpongDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('beerpong.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    //final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER';

    await db.execute('''
CREATE TABLE $tableUsers ( 
  ${UserFields.id} $idType, 
  ${UserFields.username} $textType,
  ${UserFields.name} $textType,
  ${UserFields.email} $textType,
  ${UserFields.team_id} $integerType,
  ${UserFields.played_games} $integerType // playedgamesnel valami baj
  )
''');
  }

  Future<User> create(User user) async {
    print('AAAAAAAA');
    final db = await instance.database;
    print('XXXXXXXXX');
     final json = user.toJson();
     final columns =
         '${UserFields.username}, ${UserFields.name}, ${UserFields.email}, ${UserFields.team_id}';
     final values =
         '${json[UserFields.username]}, ${json[UserFields.name]}, ${json[UserFields.email]}, ${json[UserFields.team_id]}';
     final id = await db
         .rawInsert('INSERT INTO $tableUsers ($columns) VALUES ($values)');

    //final id = await db.insert(tableUsers, user.toJson());

    return user.copy(id: id);
  }

  Future<User> readNote(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableUsers,
      columns: UserFields.values,
      where: '${UserFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<User>> readAllNotes() async {
    final db = await instance.database;

    final orderBy = '${UserFields.id} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableUsers, orderBy: orderBy);

    return result.map((json) => User.fromJson(json)).toList();
  }

  Future<int> update(User user) async {
    final db = await instance.database;

    return db.update(
      tableUsers,
      user.toJson(),
      where: '${UserFields.id} = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableUsers,
      where: '${UserFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}