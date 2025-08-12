import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_task_with_cubit/models/task_model.dart';
import 'package:uuid/uuid.dart';

part 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInit());

  void addTask({required String title}) {
    // Copy the old task list and add the new task
    // We use ... to copy all items
    TaskModel taskModel = TaskModel(Uuid().v4(), title, false);
    emit(ToDoUpdate([...state.task, taskModel]));
  }

  void removeTask({required String id}) {
    // Copy old tasks but skip the one with this id
    final updateTasks = state.task.where((task) => task.id != id).toList();
    // Emit new state with updated task list
    emit(ToDoUpdate(updateTasks));
  }

  void toggleTask({required String id}) {
    // Make a new list of tasks
    final updateTasks = state.task.map((task) {
      if (task.id == id) {
        // If this task has the same id
        // Return a new task with the same data but change isComplete
        return TaskModel(task.id, task.title, !task.isCompelete);
      } else {
        // Return the same task without changes
        return task;
      }
    }).toList();

    emit(ToDoUpdate(updateTasks));
  }
}
