import 'package:flutter/material.dart';

class MyRoom2 extends StatelessWidget {
  const MyRoom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Dining Room'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('thes is room 2'),
      ),
    );
  }
}
