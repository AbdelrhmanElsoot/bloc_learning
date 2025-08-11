part of 'to_do_cubit.dart';


@immutable
sealed class ToDoState extends Equatable{
  final List<TaskModel> task ;

  const ToDoState(this.task); 

  @override
  List<Object?> get props => [task];  
  
}

class ToDoInit extends ToDoState {
  ToDoInit() : super([]); 
}

class ToDoUpdate extends ToDoState {
  const ToDoUpdate(super.task); 

}