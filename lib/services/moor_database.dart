import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// flutter packages pub run build_runner watch

part 'moor_database.g.dart';
class Items extends Table {
  IntColumn get seq => integer().autoIncrement()();
  IntColumn get id => integer()();
  TextColumn get name => text().withLength(min: 1, max:1024)();
  TextColumn get barcode => text().withLength(min: 1, max:50)();
  IntColumn get onStock => integer()();
  IntColumn get counted => integer()();
  BoolColumn get scanned => boolean().withDefault(Constant(false))();
  BoolColumn get isDeleted => boolean().withDefault(Constant(false))();
}
@UseMoor(tables: [Items])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
    : super((FlutterQueryExecutor.inDatabaseFolder(
      path: 'invent.sqlite',
      logStatements: true
    )));
    @override
    int get schemaVersion => 1;
}