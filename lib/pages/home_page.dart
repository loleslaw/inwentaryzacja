import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:inwentaryzacja/services/storage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, @required this.storage}) : super(key: key);

  final Storage storage;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String filePath='No file';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fle selection'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _getFilePath,
          child: Icon(Icons.file_download,
        ),
      ),
      body: Center(child: Text(filePath),),
    );
  }
  _getFilePath() async {
  String _filePath;
//filePath = await FilePicker.getFilePath(type: FileType.ANY); // will let you pick one file path, from all extensions
_filePath = await FilePicker.getFilePath(type: FileType.CUSTOM, fileExtension: 'csv');
final file = await widget.storage.readFile(filePath: _filePath);
  
setState(() {
  filePath = _filePath;
});


}
}


