import 'package:fitness_application_project/Authentication/createNewUser.dart';
import 'package:fitness_application_project/Authentication/verifyInformation.dart';
import 'package:flutter/material.dart';

import 'menuPage.dart';
import 'package:fitness_application_project/Features/dailyPlan/dailyPlanPage.dart';
import 'package:fitness_application_project/Features/foodTracker/foodTrackerPage.dart';
import 'package:fitness_application_project/Features/workoutTracker/workoutTrackerPage.dart';
import 'package:fitness_application_project/Features/yourData/yourDataPage.dart';
import 'package:fitness_application_project/Authentication/Authentication.dart';

void navToMenuPage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => menuPage()));
}

void navToDailyPlan (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => dailyPlanPage()));
}

void navToFoodTracker (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => foodTrackerPage()));
}

void navToWorkoutTracker (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => workoutTrackerPage()));
}

void navToYourData (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => yourDataPage()));
}

void navBackToAuth (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => authenticationPage()));
}

void navToVerify (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => verifyPage()));
}

void navToCreateNewUser (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => createNewUserPage()));
}
