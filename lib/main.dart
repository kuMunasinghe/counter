// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

main() {
  runApp(Count());
}

// ignore: use_key_in_widget_constructors
class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountState(),
    );
  }
}

class CountState extends StatefulWidget {
  const CountState({Key? key}) : super(key: key);
  @override
  State<CountState> createState() => _CountStateState();
}

class _CountStateState extends State<CountState> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Counter🔺"),
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("You touched this button",
            style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Text("$_count",style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Incrementer();
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.plus_one_rounded),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void Incrementer() {
    setState(() {
      _count++;
    });
  }
}
