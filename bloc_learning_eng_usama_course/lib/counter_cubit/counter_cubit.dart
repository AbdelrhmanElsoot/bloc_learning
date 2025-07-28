import 'package:flutter/material.dart';

class CounterAppScreenWithCubit extends StatelessWidget {
  const CounterAppScreenWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('counter', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('-', style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('+', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
