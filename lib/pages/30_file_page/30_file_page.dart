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
          return BlocBuilder<FileBloc, FileState>(
            bloc: fileBloc,
            builder: (context, state) {
              if (state is InitialFileState) {
                return Center(child: Text('Initial state'),);
              } else if (state is FileIsLoading || state is FileIsSaving) {
                return Center(child: CircularProgressIndicator(),);
              } else if (state is FileLoaded) {
                return Center(child: Text('Plik zaladowany'),);
              } else if (state is FileSaved) {
                return Center(child: Text('Plik zapisany'),);
              } else {
                return Center(child: Text('Inny state'),);
              }
            
            }
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
            onPressed: () {
              print('store data to file');
              fileBloc.add((SaveFile()));
            },
            child: Icon(Icons.file_upload),),

        ],

      ),
    );
  }

  _loadDataFromFile() {
    print('Loading data from file');
    
  }
  _storeDataToFile() {
    print('store data to file');
  }


}