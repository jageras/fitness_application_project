import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

class progressPage extends StatefulWidget {
  @override
  progressPageState createState() => progressPageState();
}

class progressPageState extends State<progressPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.home), onPressed: (
            ){navToMenuPage(context);}),
        title: const Text('Workout Progress'),
        actions: [
          IconButton(icon: const Icon(Icons.import_export), onPressed: () {}),
        ],
        backgroundColor: Colors.green,
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            TextButton.icon(
              icon: const Icon(Icons.fitness_center, size: 30.0), // Your icon here
              label: const Text('Manage Workouts'), // Your text here
              onPressed: () {
                navToWorkoutTracker(context);
              },
            ),
            const Spacer(),
            TextButton.icon(
              icon: const Icon(Icons.stacked_line_chart, size: 30.0), // Your icon here
              label: const Text('View Progress'), // Your text here
              onPressed: (){
                null;
              },
            ),
            // IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}