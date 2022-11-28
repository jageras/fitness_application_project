import 'package:flutter/material.dart';

import 'menuPage.dart';
import 'package:fitness_application_project/Features/dailyPlan/dailyPlanPage.dart';
import 'package:fitness_application_project/Features/foodTracker/foodTrackerPage.dart';
import 'package:fitness_application_project/Features/workoutTracker/workoutTrackerPage.dart';
import 'package:fitness_application_project/Features/yourData/yourDataPage.dart';

void navToMenuPage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => menuPage())); //Navigate to temperature page
}

void navToDailyPlan (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => dailyPlanPage())); //Navigate to temperature page
}

void navToFoodTracker (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => foodTrackerPage())); //Navigate to temperature page
}

void navToWorkoutTracker (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => workoutTrackerPage())); //Navigate to temperature page
}

void navToYourData (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => yourDataPage())); //Navigate to temperature page
}

