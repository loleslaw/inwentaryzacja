/*

import 'package:inwentaryzacja/models/item_class.dart';

import 'database_creator.dart';

class RepositoryService {
  static Future<List<Item>> getAllItems([bool withDeleted = false]) async {
    final sql = withDeleted
      ? 'SELECT * FROM ${DatabaseCreator.tableName}'
      : ''' SELECT * FROM ${DatabaseCreator.tableName} 
      where ${DatabaseCreator.isDeleted} == 0''';
      final data = await db.rawQuery(sql);
      List<Item> items = List<Item>();

      for (final node in data) {
        final item = Item.fromJson(node);
        items.add(item);
      }
      return items;
  }
  static Future<Item> getItem([int id]) async {
    final sql = ''' SELECT * FROM ${DatabaseCreator.tableName} 
    WHERE ${DatabaseCreator.id} == $id''';
    final data = await db.rawQuery(sql);

    final item = Item.fromJson(data[0]);
    return item;
  }
  static Future<void> addItem(Item item) async {
    final sql = ''' INSERT INTO |${DatabaseCreator.tableName} 
    (
      ${DatabaseCreator.id},
      ${DatabaseCreator.name},
      ${DatabaseCreator.barcode},
      ${DatabaseCreator.onStock},
      ${DatabaseCreator.counted},
      ${DatabaseCreator.scanned},
      ${DatabaseCreator.isDeleted}
    ) VALUES (
      ${item.id},
      "${item.name}",
      ${item.barcode},
      ${item.onStock},
      ${item.counted},
      ${item.scanned ? 1 : 0},
      ${item.isDeleted ? 1 : 0}
      )''';
    final result = await db.rawInsert(sql);
    DatabaseCreator.databaseLog('insert', sql, null, result);
  }
  static Future<void> deteteItem(Item item) async {
    final sql = '''UPDATE ${DatabaseCreator.tableName} 
    SET ${DatabaseCreator.isDeleted} = 1 
    WHERE ${DatabaseCreator.id} == ${item.id}''';
    final result = await db.rawDelete(sql);
    DatabaseCreator.databaseLog('Delete item', sql, null, result);
  }
  static Future<void> updateItem(Item item) async {
    final sql = '''UPDATE ${DatabaseCreator.tableName} 
    SET ${DatabaseCreator.name} = "${item.name}",
     ${DatabaseCreator.barcode} = ${item.barcode},
     ${DatabaseCreator.counted} = ${item.counted},
     ${DatabaseCreator.onStock} = ${item.onStock},
     ${DatabaseCreator.scanned} = ${item.scanned ? 1 : 0}
    WHERE ${DatabaseCreator.id} == ${item.id}
    ''';
    final result = await db.rawUpdate(sql);
    DatabaseCreator.databaseLog('update item', sql, null, result);
  }
  static Future<int> coutnItems() async {
    final data = await db.query('''SELECT COUNT(*) FROM ${DatabaseCreator.tableName}  ''');
    int count = data[0].values.elementAt(0);
    return count;
  }
}

*/