// dashboard_page.dart
// import 'dart:io';

import 'package:dashboard/devices.dart';
import 'package:dashboard/logout.dart';
import 'package:dashboard/myinfo.dart';
import 'package:dashboard/notification.dart';
import 'package:dashboard/profile.dart';
import 'package:dashboard/room1.dart';
import 'package:dashboard/room2.dart';
import 'package:dashboard/room3.dart';
import 'package:dashboard/room4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:dashboard/about.dart';
import 'package:intl/intl.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {

    //current date noted
   
    // ignore: unused_local_variable
    String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('My_Smart_Home'),
         
        backgroundColor: Colors.lightBlue,

        actions: [
          
         IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyNotification()
                  )
                );

            },
          ),

           // ADMIN incon
          IconButton(
            icon: Image.asset(
              'assets/images/avisek.jpg',
              width: 24, 
              height: 24, 
            ),
            onPressed: () {
              // Navigate to MyNotification page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyInfo(),
                ),
              );
            },
          ),
        ],


      ),
      drawer: const Drawer(
        child: DrawerContent(),
      ),
      body: const DashboardWidget(),
    );
  }
}

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: const Text('Profile'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyProfile(),
              ),
            );
          },
        ),

         ListTile(
          title: const Text('Conected Devices'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyDevices(),
              ),
            );
          },
        ),

         
         ListTile(
          title: const Text('About'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const About(),
              ),
            );
          },
        ),

        ListTile(
          title: const Text('LogOut'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LogOut(),
              ),
            );
          },
        ),


        // Add more list tiles for additional options
      ],

      
    );
   
  }
}


class DashboardWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DashboardWidget({Key? key});


  @override
  Widget build(BuildContext context) {
        
        
        // ignore: unused_local_variable
        String formattedDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
        // ignore: unused_local_variable
        String formattedTime = DateFormat('h:mm a').format(DateTime.now());
    return Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const SizedBox(
          //   width: 200,
          //   height: 200,
          //   child: AnalogClockWidget(),
          // ),

          Text(
            formattedTime,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
            ),
          ),

          // const Text(
          //   // formattedDate,
          //   // DateFormat.ABBR_MONTH_DAY,
          //   DateFormat.ABBR_MONTH_WEEKDAY_DAY,
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

           
         const SizedBox(height: 20),
          
          const SizedBox(height: 10),
          // 2 rows, each containing two buttons
    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Room 1
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyRoom1(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0), //Button size
                  backgroundColor: Colors.lightBlueAccent,
                  shadowColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), 
                  ),
                ),
                child: const Text('LivingRoom'),
              ),
              const SizedBox(width: 20,), //Spacing between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Room 2
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyRoom2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0), //Batton size
                  backgroundColor: Colors.lightBlueAccent,
                  shadowColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), 
                  ),
                ),
                child: const Text('DiningRoom'),
              ),
            ],
          ),

          const SizedBox(height: 20), 
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Room 3
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyRoom3(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0), 
                  backgroundColor: Colors.lightBlueAccent,
                  shadowColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), 
                  ),
                ),
                child: const Text('      Hall        '),
              ),

              const SizedBox(width: 25),
              
              ElevatedButton(
                onPressed: () {
                  // Navigate to Room 4
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyRoom4(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(35.0), 
                  backgroundColor: Colors.lightBlueAccent,
                  shadowColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), 
                  ),
                ),
                child: const Text('    Kitchen    '),
              ),
            ],
          ),

          const SizedBox(height: 40), 

            //analog clock 
           SizedBox(
            width: 175,
            height: 200,
            child: AnalogClock(
              dateTime: DateTime.now(),
              isKeepTime: false,
              hourHandColor: Colors.black,
              minuteHandColor: Colors.black,
              secondHandColor: Colors.red,
              hourNumberColor: Colors.black,
              dialBorderColor: Colors.lightGreen, 
              dialColor: Colors.lightBlue, 
              centerPointColor: Colors.lightBlue, 
            ),


            // child: SizedBox(
            //   child: PrettyGauge(
            //       gaugeSize: 200,
            //       segments: [
            //           GaugeSegment('Low', 20, Colors.red),
            //           GaugeSegment('Medium', 40, Colors.orange),
            //           GaugeSegment('High', 40, Colors.green),
            //       ],
            //       currentValue: 46,
            //       displayWidget: const Text('Fuel in tank', style: TextStyle(fontSize: 12)),
            //   ),
            // ),
          ),

          const SizedBox(height: 20), 

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrettyGauge(
                gaugeSize: 150,
                segments: [
                  GaugeSegment('Low', 20, Colors.red),
                  GaugeSegment('Medium', 40, Colors.orange),
                  GaugeSegment('High', 40, Colors.green),
                ],
                currentValue: 46,
                displayWidget: const Text('Humidite of room', style: TextStyle(fontSize: 11.0)),
              ),

              const SizedBox(width: 20), //spacing between gauges

              PrettyGauge(
                gaugeSize: 150,
                segments: [
                  GaugeSegment('Cold', 30, Colors.lightGreen),
                  GaugeSegment('Normal', 30, Colors.blue),
                  GaugeSegment('Hot', 40, Colors.red),
                ],
                currentValue: 25 ,
                displayWidget: const Text('Temperature', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
