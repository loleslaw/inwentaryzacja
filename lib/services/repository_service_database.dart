import 'package:inwentaryzacja/models/item_class.dart';

import 'database_creator.dart';

class RepositoryService {
  static Future<List<Item>> getAllItems() async {
    final sql = 'SELECT * FROM ${DatabaseCreator.tableName}';
  }
}