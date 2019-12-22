import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';
//https://pub.dev/packages/flutter_bloc

class FileBloc extends Bloc<FileEvent, FileState> {
  @override
  FileState get initialState => InitialFileState();

  @override
  Stream<FileState> mapEventToState(
    FileEvent event,
  ) async* {
    if (event is LoadFile) {
      yield FileIsLoading();
      await _delay(task: 'Loading file');
      print('file loaded');
      yield FileLoaded();

    } else
    if (event is SaveFile) {
      yield FileIsSaving();
      await _delay(task: 'Saving file');
      print('file saved');
      yield FileSaved();
    }
  }
  Future _delay({String task}) async {
    print('starting $task');
    Future.delayed(Duration(seconds: 3));
  }
}
