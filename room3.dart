import 'package:flutter/material.dart';

class MyRoom3 extends StatelessWidget {
  const MyRoom3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Hall Room'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('thes is Room 3'),
      ),
    );
  }
}
