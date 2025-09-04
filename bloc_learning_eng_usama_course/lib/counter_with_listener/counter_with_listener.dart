import 'package:bloc_learning_eng_usama_course/counter_with_listener/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWithListener extends StatelessWidget {
  const CounterWithListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        body: BlocListener<CounterCubit, CounterState>(
          // read last value of state without rebuild the screen
          // BlocListener: listen to state changes
          // use for one-time actions
          // ==================================
          // example: show SnackBar, show Dialog, go to new page
          // ==================================
          // it does not build UI
          // it only reacts when state changes
          listener: (context, state) {
            // called when state changes
            // check if state is 5
            // show SnackBar message
            // main widget
            // build UI with new state
            // show counter number
            if (state.count == 5) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Counter is 5")));
            }
          },
          child: Center(
            child: BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("${state.count}", style: TextStyle(fontSize: 24)),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<CounterCubit>().dencrement();
                          },
                          icon: Text('-', style: TextStyle(fontSize: 24)),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<CounterCubit>().increment();
                          },
                          icon: Text('+', style: TextStyle(fontSize: 24)),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
