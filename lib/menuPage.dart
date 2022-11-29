import 'package:flutter/material.dart';

import 'dart:math';

import 'navigation.dart';
import 'circularMenu/circular_menu.dart';
import 'circularMenu/circular_menu_item.dart';

class menuPage extends StatefulWidget {
  @override
  menuPageState createState() => menuPageState();
}

class menuPageState extends State<menuPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.85,

              child: const FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  'My Fitness Friend',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Kocka',
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),



            SizedBox(

              height: MediaQuery.of(context).size.height * 0.5,

              child: Align(
                alignment: Alignment.center,

                child: CircularMenu(

                  startingAngleInRadian: 0,
                  endingAngleInRadian: 2.0 * pi,
                  alignment: Alignment.center,
                  curve: Curves.ease,
                  reverseCurve: Curves.ease,

                  toggleButtonColor: Colors.green,
                  items: [

                    CircularMenuItem(
                        text: 'Workout Tracker',
                        textAlign: TextAlign.center,
                        color: Colors.green,
                        onPressed: () {
                          navToWorkoutTracker(context);
                        }),

                    CircularMenuItem(
                        text: 'Food Tracker',
                        textAlign: TextAlign.center,
                        color: Colors.green,
                        onPressed: () {
                          navToFoodTracker(context);
                        }),

                    CircularMenuItem(
                        text: 'BMI\nCalc',
                        textAlign: TextAlign.center,
                        color: Colors.green,
                        onPressed: () {
                          navToYourData(context);
                        }),

                    CircularMenuItem(
                        text: 'Daily Plan',
                        textAlign: TextAlign.center,
                        color: Colors.green,
                        onPressed: () {
                          navToDailyPlan(context);
                        }),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}