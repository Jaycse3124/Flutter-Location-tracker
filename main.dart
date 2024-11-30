// main.dart
import 'package:flutter/material.dart';
import 'attendance_screen.dart'; // Import AttendanceScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add 'key' parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AttendanceScreen(), // Set AttendanceScreen as the home screen
    );
  }
}
