import 'package:equatable/equatable.dart';

abstract class FileEvent extends Equatable {
  const FileEvent();
}

class LoadFile extends FileEvent {
  @override
  List<Object> get props => [];
}

class SaveFile extends FileEvent {
  @override
  List<Object> get props => [];
}
