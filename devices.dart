import 'package:flutter/material.dart';

class MyDevices extends StatelessWidget {
  const MyDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevicesConnected'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This is the devices page'),
            const SizedBox(height: 20), // Add spacing

            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Scan to Add Device'),
            ),
          ],
        ),
      ),
    );
  }
}
