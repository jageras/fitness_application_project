import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

class workoutTrackerPage extends StatefulWidget {
  @override
  workoutTrackerPageState createState() => workoutTrackerPageState();
}

class workoutTrackerPageState extends State<workoutTrackerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.home), onPressed: (){navToMenuPage(context);}),
        title: const Text('Workout Tracker'),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ],
        backgroundColor: Colors.green,
      ),


      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            TextButton.icon(
              icon: const Icon(Icons.fitness_center, size: 30.0), // Your icon here
              label: const Text('Manage Workouts'), // Your text here
              onPressed: (){
               null;
              },
            ),
            const Spacer(),
            TextButton.icon(
              icon: const Icon(Icons.stacked_line_chart, size: 30.0), // Your icon here
              label: const Text('View Progress'), // Your text here
              onPressed: (){
                navToProgress(context);
              },
            ),
            // IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}