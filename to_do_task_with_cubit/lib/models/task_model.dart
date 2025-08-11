import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  final int id;
  final String title;
  final bool isCompelete;

  TaskModel(this.id, this.title, this.isCompelete);

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, isCompelete];
}
