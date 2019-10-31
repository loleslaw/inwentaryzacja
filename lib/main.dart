import 'package:flutter/material.dart';
import 'package:inwentaryzacja/pages/baarcode_scanner.dart';
import 'package:inwentaryzacja/pages/home_page.dart';
import 'package:inwentaryzacja/services/storage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: HomePage(storage: Storage(),),
    home: BarCodeScanner(),
    );
  }
}
