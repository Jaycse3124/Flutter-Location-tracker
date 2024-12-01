import 'package:flutter/material.dart';
import 'location_screen.dart'; // Import the location screen
import 'route_details_screen.dart'; // Import the route details screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance App',
      // Use the initial Route as LocationScreen
      home: LocationScreen(),
      routes: {
        '/routeDetails': (context) => RouteDetailsScreen(), // Add RouteDetailsScreen
      },
    );
  }
}
