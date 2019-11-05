import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'dart:io';

Database db;

class DatabaseCreator {
  static const tableName = 'itemsdata';
  static const id = 'id';
  static const name = 'name';
  static const barcode = 'barcode';
  static const onStock = 'onstock';
  static const counted = 'counted';
  static const scanned = 'scanned';
  static const isDeleted = 'isDeleted';

  static void databaseLog(String functionName, String sql, [List<Map<String, dynamic>> selectQueryResult, int insetAndUpdateQueryResult]) 
  {
    print( functionName);
    print(sql);
    if (selectQueryResult != null) {
      print(selectQueryResult);
    } else if (insetAndUpdateQueryResult != null) {
      print(insetAndUpdateQueryResult);
    }
  }

  Future<void>createTable(Database db) async {
    final todoSql = '''
      CREATE TABLE $tableName
      (
        $id INTEGER PRIMARY KEY,
        $name TEXT, 
        $barcode INTEGER,
        $onStock INTEGER,
        $counted INTEGER,
        $scanned BIT NOT NULL,
        $isDeleted BIT NOT NULL
      )
    ''';
    await db.execute(todoSql);
  }
  Future<String>getDatabasePath([String dbName]) async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, dbName);

    if (await Directory(dirname(path)).exists()) {
      // await deleteDatabase(path);
    } else {
      await Directory(dirname(path)).create(recursive: true);
    }
    return path;
  }

  Future<void> initDatabase() async {
    final path = await getDatabasePath('inv_data');
    db = await openDatabase(path, version: 1, onCreate: onCreate);
    print(db);
  }

  Future<void> onCreate(Database db, int version) async {
    await createTable(db);
  }
  
}
