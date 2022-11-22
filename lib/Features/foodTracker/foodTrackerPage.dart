import 'package:fitness_application_project/globalVariables.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';
import 'package:intl/intl.dart';

class foodTrackerPage extends StatefulWidget {
  @override
  foodTrackerPageState createState() => foodTrackerPageState();
}

class foodTrackerPageState extends State<foodTrackerPage> {
  String todayBreakfast = "";
  String todayLunch = "";
  String todayDinner = "";
  String todayDessert = "";
  String todaySnack = "";

  @override
  void initState() {
    super.initState();

    var currentDate = DateTime.now();
    var dateFormatter = DateFormat("EEEE");

    globals.formattedDate = dateFormatter.format(currentDate);

    getToday();
  }

  @override
  void getToday() async {
    try{
      final dataSnapshotBreakfast = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection(globals.formattedDate).doc('Breakfast').get();
      setState(() {
        todayBreakfast = "-Restaurant or Brand: ${dataSnapshotBreakfast['restaurant']}\n-Food Item: ${dataSnapshotBreakfast['food item']}\n-Calories: ${dataSnapshotBreakfast['calories']}\n";
      });
    }catch (e) {
      setState(() {
        todayBreakfast = "No Data Found";
      });
    }

    try{
      final dataSnapshotLunch = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection(globals.formattedDate).doc('Lunch').get();
      setState(() {
        todayLunch = "-Restaurant or Brand: ${dataSnapshotLunch['restaurant']}\n-Food Item: ${dataSnapshotLunch['food item']}\n-Calories: ${dataSnapshotLunch['calories']}\n";
      });
    }catch (e) {
      setState(() {
        todayLunch = "No Data Found";
      });
    }

    try{
      final dataSnapshotDinner = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection(globals.formattedDate).doc('Dinner').get();
      setState(() {
        todayDinner = "-Restaurant or Brand: ${dataSnapshotDinner['restaurant']}\n-Food Item: ${dataSnapshotDinner['food item']}\n-Calories: ${dataSnapshotDinner['calories']}\n";
      });
    }catch (e) {
      setState(() {
        todayDinner = "No Data Found";
      });
    }

    try{
      final dataSnapshotDessert = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection(globals.formattedDate).doc('Dessert').get();
      setState(() {
        todayDessert = "-Restaurant or Brand: ${dataSnapshotDessert['restaurant']}\n-Food Item: ${dataSnapshotDessert['food item']}\n-Calories: ${dataSnapshotDessert['calories']}\n";
      });
    }catch (e) {
      setState(() {
        todayDessert = "No Data Found";
      });
    }

    try{
      final dataSnapshotSnack = await FirebaseFirestore.instance.collection("UserData").doc(globals.username).collection(globals.formattedDate).doc('Snack').get();
      setState(() {
        todaySnack = "-Restaurant or Brand: ${dataSnapshotSnack['restaurant']}\n-Food Item: ${dataSnapshotSnack['food item']}\n-Calories: ${dataSnapshotSnack['calories']}\n";
      });
    }catch (e) {
      setState(() {
        todaySnack = "No Data Found";
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
              navToMenuPage(context);
            },

            icon: const Icon(Icons.arrow_back),
          ),

          actions: <Widget>[
            IconButton(
                onPressed: (){
                  navToAddFood(context);
                },
                icon: const Icon(Icons.add)
            )
          ],
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
                          "Today's Food"
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
                            Text(todayBreakfast)
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
                            Text(todayLunch)
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
                            Text(todayDinner)
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
                            Text(todayDessert)
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
                            Text(todaySnack)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),



                  SizedBox(
                      height: 50,
                      width: 150,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green
                        ),
                        onPressed: () {
                          navToFoodTrackerWeek(context);
                        },
                        child: const Text(
                            "See Full Week"
                        ),
                      )
                  ),


                ],
              )
          ),
        )
    );
  }
}