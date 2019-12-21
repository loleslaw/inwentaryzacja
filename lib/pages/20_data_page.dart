import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Data page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        child: Icon(Icons.add),
        tooltip: 'Dodaje pozycję do bazy',
        ),
    );
  }
  _addItem(){
    print('add item to database');
  }
}