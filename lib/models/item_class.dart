/*
import 'package:inwentaryzacja/services/database_creator.dart';

class Item {
    int id;
  String name;  // name of the elemement
  int barcode;  // bar code of element
  int onStock;  // number of items on stock (expected value)
  int counted;  // number of scanned elements (calculated as +/-)
  bool scanned; // was the item scnned already (true /false)
  bool isDeleted;

  Item([this.id, this.name, this.barcode, this.onStock, this.counted=0, this.scanned=false, this.isDeleted = false]);

  Item.fromJson(Map<String, dynamic> json ){
    this.id = json[DatabaseCreator.id] ?? 0;
    this.name = json[DatabaseCreator.name] ?? '';
    this.barcode = json[DatabaseCreator.barcode] ?? 0;
    this.onStock = json[DatabaseCreator.onStock] ?? 0;
    this.counted = json[DatabaseCreator.counted] ?? 0;
    this.scanned = json[DatabaseCreator.scanned]==1 ;
    this.isDeleted = json[DatabaseCreator.isDeleted] == 1 ;
  }

}
*/