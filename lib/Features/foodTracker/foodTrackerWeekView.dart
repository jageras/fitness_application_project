import 'package:fitness_application_project/globalVariables.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

class foodTrackerWeekPage extends StatefulWidget {
  @override
  foodTrackerWeekPageState createState() => foodTrackerWeekPageState();
}

class foodTrackerWeekPageState extends State<foodTrackerWeekPage> {
  String mondayBreakfast = "";
  String mondayLunch = "";
  String mondayDinner = "";
  String mondayDessert = "";
  String mondaySnack = "";

  String tuesdayBreakfast = "";
  String tuesdayLunch = "";
  String tuesdayDinner = "";
  String tuesdayDessert = "";
  String tuesdaySnack = "";

  String wednesdayBreakfast = "";
  String wednesdayLunch = "";
  String wednesdayDinner = "";
  String wednesdayDessert = "";
  String wednesdaySnack = "";

  String thursdayBreakfast = "";
  String thursdayLunch = "";
  String thursdayDinner = "";
  String thursdayDessert = "";
  String thursdaySnack = "";

  String fridayBreakfast = "";
  String fridayLunch = "";
  String fridayDinner = "";
  String fridayDessert = "";
  String fridaySnack = "";

  String saturdayBreakfast = "";
  String saturdayLunch = "";
  String saturdayDinner = "";
  String saturdayDessert = "";
  String saturdaySnack = "";

  String sundayBreakfast = "";
  String sundayLunch = "";
  String sundayDinner = "";
  String sundayDessert = "";
  String sundaySnack = "";

  @override
  void initState() {

    getMonday();
    getTuesday();
    getWednesday();
    getThursday();
    getFriday();
    getSaturday();
    getSunday();
  }

  @override
  void getMonday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Monday').doc('Breakfast').get();
      setState(() {
        mondayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        mondayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Monday').doc('Lunch').get();
      setState(() {
        mondayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        mondayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Monday').doc('Dinner').get();
      setState(() {
        mondayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        mondayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Monday').doc('Dessert').get();
      setState(() {
        mondayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        mondayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Monday').doc('Snack').get();
      setState(() {
        mondaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        mondaySnack = "No Data Found";
      });
    }
  }

  @override
  void getTuesday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Tuesday').doc('Breakfast').get();
      setState(() {
        tuesdayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        tuesdayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Tuesday').doc('Lunch').get();
      setState(() {
        tuesdayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        tuesdayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Tuesday').doc('Dinner').get();
      setState(() {
        tuesdayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        tuesdayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Tuesday').doc('Dessert').get();
      setState(() {
        tuesdayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        tuesdayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Tuesday').doc('Snack').get();
      setState(() {
        tuesdaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        tuesdaySnack = "No Data Found";
      });
    }
  }

  @override
  void getWednesday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Wednesday').doc('Breakfast').get();
      setState(() {
        wednesdayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        wednesdayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Wednesday').doc('Lunch').get();
      setState(() {
        wednesdayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        wednesdayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Wednesday').doc('Dinner').get();
      setState(() {
        wednesdayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        wednesdayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Wednesday').doc('Dessert').get();
      setState(() {
        wednesdayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        wednesdayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Wednesday').doc('Snack').get();
      setState(() {
        wednesdaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        wednesdaySnack = "No Data Found";
      });
    }
  }

  @override
  void getThursday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Thursday').doc('Breakfast').get();
      setState(() {
        thursdayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        thursdayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Thursday').doc('Lunch').get();
      setState(() {
        thursdayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        thursdayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Thursday').doc('Dinner').get();
      setState(() {
        thursdayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        thursdayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Thursday').doc('Dessert').get();
      setState(() {
        thursdayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        thursdayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Thursday').doc('Snack').get();
      setState(() {
        thursdaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        thursdaySnack = "No Data Found";
      });
    }
  }

  @override
  void getFriday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Friday').doc('Breakfast').get();
      setState(() {
        fridayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        fridayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Friday').doc('Lunch').get();
      setState(() {
        fridayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        fridayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Friday').doc('Dinner').get();
      setState(() {
        fridayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        fridayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Friday').doc('Dessert').get();
      setState(() {
        fridayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        fridayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Friday').doc('Snack').get();
      setState(() {
        fridaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        fridaySnack = "No Data Found";
      });
    }
  }

  @override
  void getSaturday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Saturday').doc('Breakfast').get();
      setState(() {
        saturdayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        saturdayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Saturday').doc('Lunch').get();
      setState(() {
        saturdayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        saturdayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Saturday').doc('Dinner').get();
      setState(() {
        saturdayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        saturdayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Saturday').doc('Dessert').get();
      setState(() {
        saturdayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        saturdayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Saturday').doc('Snack').get();
      setState(() {
        saturdaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        saturdaySnack = "No Data Found";
      });
    }
  }

  @override
  void getSunday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Sunday').doc('Breakfast').get();
      setState(() {
        sundayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        sundayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Sunday').doc('Lunch').get();
      setState(() {
        sundayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        sundayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Sunday').doc('Dinner').get();
      setState(() {
        sundayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        sundayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Sunday').doc('Dessert').get();
      setState(() {
        sundayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        sundayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection('Sunday').doc('Snack').get();
      setState(() {
        sundaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        sundaySnack = "No Data Found";
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Food Tracking"),

          leading: IconButton(
            onPressed: () {
              navToFoodTracker(context);
            },

            icon: const Icon(Icons.arrow_back),
          ),
        ),

        body: SingleChildScrollView(
          child: Center(
              child: Column(
                children: <Widget>[

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Monday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(mondayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(mondayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(mondayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(mondayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(mondaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Tuesday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(tuesdayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(tuesdayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(tuesdayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(tuesdayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(tuesdaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Wednesday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(wednesdayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(wednesdayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(wednesdayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(wednesdayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(wednesdaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Thursday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(thursdayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(thursdayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(thursdayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(thursdayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(thursdaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Friday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(fridayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(fridayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(fridayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(fridayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(fridaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Saturday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(saturdayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(saturdayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(saturdayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(saturdayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(saturdaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const FittedBox(
                      child: Text(
                          "Sunday's Food"
                      ),
                    ),
                  ),

                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),


                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Breakfast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(sundayBreakfast)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Lunch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(sundayLunch)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dinner",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(sundayDinner)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Dessert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(sundayDessert)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    color: Colors.green[200],
                    child: SizedBox(
                      height: 110,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const Text("Snack",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),

                            const SizedBox(height: 3,),
                            Text(sundaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                ],
              )
          ),
        )
    );
  }
}