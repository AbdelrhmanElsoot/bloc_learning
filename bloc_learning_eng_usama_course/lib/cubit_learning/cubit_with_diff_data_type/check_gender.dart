import 'package:bloc_learning_eng_usama_course/cubit_learning/cubit_with_diff_data_type/bool_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckGender extends StatelessWidget {
  const CheckGender({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoolCubitCubit(),
      child: BlocBuilder<BoolCubitCubit, bool>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<BoolCubitCubit>().male();
                        },
                        icon: Icon(
                          Icons.male,
                          color: state ? Colors.blue : Colors.grey,
                        ),
                      ),
                      SizedBox(width: 30),
                      IconButton(
                        onPressed: () {
                          context.read<BoolCubitCubit>().female();
                        },
                        icon: Icon(
                          Icons.female,
                          color: state ? Colors.grey : Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
