import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_task_with_cubit/cubit/to_do_cubit.dart';

class ToDo extends StatelessWidget {
  ToDo({super.key});

  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ToDoCubit(),
        child: BlocBuilder<ToDoCubit, ToDoState>(
          builder: (context, state) {
            final cubitControoler = context.read<ToDoCubit>();
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(hintText: 'Enter Task Tilte '),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (titleController.text.isEmpty) return;
                      cubitControoler.addTask(title: titleController.text);
                      titleController.clear();
                    },
                    child: Text('Add Task'),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.task.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.task[index].title),
                          leading: Checkbox(
                            value: state.task[index].isCompelete,
                            onChanged: (value) {
                              cubitControoler.toggleTask(
                                id: state.task[index].id,
                              );
                            },
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              cubitControoler.removeTask(
                                id: state.task[index].id,
                              );
                            },
                            icon: Icon(Icons.delete),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
