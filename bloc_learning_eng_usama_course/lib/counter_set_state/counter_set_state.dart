import 'package:flutter/material.dart';

// In this example, both the UI and logic are combined in the same place.
// This tight coupling makes it hard to separate concerns.
// In real-world applications, this approach is not recommended.
// we need to use state Mangement.

class CounterAppScreen extends StatefulWidget {
  const CounterAppScreen({super.key});

  @override
  State<CounterAppScreen> createState() => _CounterAppScreenState();
}

class _CounterAppScreenState extends State<CounterAppScreen> {
  int counter = 0;
  void incre() {
    counter++;
    setState(() {});
  }

  void decre() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decre();
                  },
                  child: Text('-', style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    incre();
                  },
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
