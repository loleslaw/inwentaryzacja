import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/file_bloc.dart';
import 'bloc/file_event.dart';
import 'bloc/file_state.dart';

class FilePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   // final FileBloc fileBloc = BlocProvider.of<FileBloc>(context);
   final FileBloc fileBloc = FileBloc();
    return Scaffold(
      body: BlocBuilder<FileBloc, FileState>(
        bloc: fileBloc,

        builder: (context, fileState) {
          return Center(
            child: Text('File page'),
          );
        }
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              print('load data from file event');
              fileBloc.add(LoadFile());
            },
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

  _storeDataToFile() {
    print('store data to file');
  }


}