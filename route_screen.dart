// attendance_screen.dart
import 'package:flutter/material.dart';
import 'location_screen.dart'; // Import LocationScreen
import 'route_screen.dart'; // Import RouteScreen

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key); // Add 'key' parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Screen'),
      ),
      body: ListView.builder(
        itemCount: 10, // Sample number of members
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Member ${index + 1}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on),
                  onPressed: () {
                    // Navigate to Location Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LocationScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.directions),
                  onPressed: () {
                    // Navigate to Route Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RouteScreen()),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
