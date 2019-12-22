import 'package:flutter/material.dart';

class FilePage extends StatelessWidget {
  const FilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('File page')),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _loaDataFrpmFile,
            backgroundColor: Colors.red,
            child: Icon(Icons.file_download),
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: _storeDataToFile,
            child: Icon(Icons.file_upload),),

        ],

      ),
    );
  }

  _loaDataFrpmFile() {
    print('load data from file');
  }

  _storeDataToFile() {
    print('store data to file');
  }
}