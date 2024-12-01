import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'route_screen.dart';

class AttendanceScreen extends StatelessWidget {
  
  final List<String> members = ['Member 1', 'Member 2', 'Member 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance")),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(members[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                IconButton(
                  icon: Icon(Icons.location_on),
                  onPressed: () {
                    // Navigate to location screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationScreen(member: members[index]),
                      ),
                    );
                  },
                ),
                // Icon to show route traveled
                IconButton(
                  icon: Icon(Icons.route),
                  onPressed: () {
                    // Navigate to route screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RouteScreen(member: members[index]),
                      ),
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
