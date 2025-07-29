import 'package:bloc_learning_eng_usama_course/cubit_learning/counter_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppScreenWithCubit extends StatelessWidget {
  const CounterAppScreenWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),

      // Create and provide CounterCubit for all widgets below in the widget tree
      // it make diffrent context to use for BlocBuilder
      // Context of BlocProvider not the same of Widget build Context
      child: BlocBuilder<CounterCubit, CounterState>(
        // BlocBuilder updates this part of the UI when the Cubit changes its state
        // We can wrap only the widget we want to rebuild, not the whole screen
        builder: (context, state) {
          // context gives us access to the Cubit from BlocProvider
          // state is the current state of the Cubit

          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.count.toString(), style: TextStyle(fontSize: 24)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().decrement();
                        },
                        child: Text('-', style: TextStyle(fontSize: 30)),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        child: Text('+', style: TextStyle(fontSize: 30)),
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
