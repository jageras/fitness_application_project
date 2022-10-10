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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget> [
              const Text(
                "Workout Tracker Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                ),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    navToMenuPage(context);
                  },
                  child: const Text(
                      "Go Back"
                  ))
            ],
          ),
        )
    );
  }
}