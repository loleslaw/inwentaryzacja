import 'package:equatable/equatable.dart';

abstract class FileState extends Equatable {
  const FileState();
}

class InitialFileState extends FileState {
  @override
  List<Object> get props => [];
}

class FileIsLoading extends FileState {
  @override
  List<Object> get props => [];
}

class FileLoaded extends FileState {
  @override
  List<Object> get props => [];
}

class FileIsSaving extends FileState {
  @override
  List<Object> get props => [];
}

class FileSaved extends FileState {
  @override
  List<Object> get props => throw [];
}

class FileLoadingError extends FileState {
  final String message;

  FileLoadingError({this.message});
  @override
  List<Object> get props => [message];
}
