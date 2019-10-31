import 'dart:io';
import 'dart:convert' show utf8;

import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/data.txt');
  }

  Future<String> readData() async {

    try {
      final  file = await localFile;
      String body = await file.readAsString();
      return body;
    } catch (e) {
      return e.toString();
    }    
  }

  Future<String> readFile({String filePath} ) async {
    try {
      final file =  File(filePath);
      String body = await ( file.readAsString());
      print(body);
      return body;
    } catch (e) {
      print('ERROR: |${e.toString()}');
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}