import 'package:flutter/material.dart';

class MyRoom4 extends StatelessWidget {
  const MyRoom4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to  Kitchen'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('thes is room 4'),
      ),
    );
  }
}
