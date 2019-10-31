import 'package:flutter/material.dart';
import 'package:inwentaryzacja/services/storage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, @required this.storage}) : super(key: key);

  final Storage storage;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(),
    );
  }
}