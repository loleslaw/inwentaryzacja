import 'dart:io';
import 'dart:convert';

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
      List<String> body = await  file.readAsLines(encoding: latin1);
      print(body);
      return 'ala';
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}