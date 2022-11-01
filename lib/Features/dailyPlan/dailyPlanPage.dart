import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

class dailyPlanPage extends StatefulWidget {
  @override
  dailyPlanPageState createState() => dailyPlanPageState();
}

class dailyPlanPageState extends State<dailyPlanPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget> [
            const Text(
              "Daily Plan Page",
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