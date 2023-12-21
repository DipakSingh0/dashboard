import 'package:flutter/material.dart';

class MyRoom1 extends StatelessWidget {
  const MyRoom1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Living Room'),
        backgroundColor: Colors.indigo[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Living Room'),

            // Buttons for smart devices
            Row(
            mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                onPressed: () {
                  // Navigate to Smart Lights page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SmartLightsPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0), // Adjust padding as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Adjust radius as needed
                  ),
                ),
                child: const Text('Smart Lights'),
                ),

                const SizedBox(width: 20.0),

                ElevatedButton(
                onPressed: () {
                  // Navigate to Air Conditioner page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AirConditionerPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text('Air Conditioner'),
                          ),
              ],
            ),

            const SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Smart TV page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SmartTVPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text('   Smart TV   '),
              ),

              const SizedBox(width: 25.0),

              ElevatedButton(
                onPressed: () {
                  // Navigate to Ceiling Fan page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CeilingFanPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text('   Ceiling Fan   '),
              ),
            ],
          ),

                    ],
                  ),
                ),
              );
            }
          }

class SmartLightsPage extends StatelessWidget {
  const SmartLightsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Lights'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('Smart Lights Page'),
      ),
    );
  }
}

class AirConditionerPage extends StatelessWidget {
  const AirConditionerPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Air Conditioner'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('Air Conditioner Page'),
      ),
    );
  }
}

class SmartTVPage extends StatelessWidget {
  const SmartTVPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart TV'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('Smart TV Page'),
      ),
    );
  }
}

class CeilingFanPage extends StatelessWidget {
  const CeilingFanPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceiling Fan'),
        backgroundColor: Colors.indigo[400],
      ),
      body: const Center(
        child: Text('Ceiling Fan Page'),
      ),
    );
  }
}
