import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';
import 'package:fitness_application_project/globalVariables.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';

class dailyPlanPage extends StatefulWidget {
  @override
  dailyPlanPageState createState() => dailyPlanPageState();
}

class dailyPlanPageState extends State<dailyPlanPage> {
  String dailyCalories = '';
  String dropDownValue = 'None';

  @override
  void initState() {
    super.initState();
    globals.activityLevel = dropDownValue;

    getData();

  }

  @override
  void getData() async {
    try {
      final dataSnapshotGender = await FirebaseFirestore.instance.collection("authentication").doc(globals.username).get();
      setState(() {
        globals.gender = "${dataSnapshotGender['gender']}";
      });
    } catch (e) {
      setState(() {
        dailyCalories = "No Gender Data Was Found";
      });
    }
  }

  @override
  double calculateBMR() {
    double height = double.parse(globals.height);
    double weight = double.parse(globals.weight);
    int age = int.parse(globals.age);
    double BMR = 0;

    if (globals.gender == 'Male'){
      BMR = 66.47 + (6.24 * weight) + (12.7 * height) - (6.75 * age);
    }
    else if (globals.gender == 'Female') {
      BMR = 65.51 + (4.35 * weight) + (4.7 * height) - (4.7 * age);
    }

    return BMR;
  }

  @override
  void calculateCals() {
    double caloriesDouble = 0;
    int caloriesInt = 0;

    if (globals.activityLevel == 'None'){
      caloriesDouble = calculateBMR() * 1.2;
    }
    else if(globals.activityLevel == 'Light') {
      caloriesDouble = calculateBMR() * 1.375;
    }
    else if(globals.activityLevel == 'Moderate'){
      caloriesDouble = calculateBMR() * 1.55;
    }
    else if(globals.activityLevel == 'Hard') {
      caloriesDouble = calculateBMR() * 1.725;
    }
    else if(globals.activityLevel == 'Extreme') {
      caloriesDouble = calculateBMR() * 1.9;
    }
    caloriesInt = caloriesDouble.ceil();

    setState(() {
      dailyCalories = caloriesInt.toString();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculate Daily Calories"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            navToMenuPage(context);
          },
        ),
      ),

      body: Center(
        child: Column(

          children: <Widget> [

            const SizedBox(height: 50,),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Age",
                  labelText: "Age: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Age';
                  }
                  return null;
                },

                onChanged: (String? ageNew) {
                  setState(() {
                    globals.age = ageNew!;
                  });
                },

              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Weight (Pounds)",
                  labelText: "Weight (Pounds): ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Weight (Pounds)';
                  }
                  return null;
                },

                onChanged: (String? weightNew) {
                  setState(() {
                    globals.weight = weightNew!;
                  });
                },

              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Height (Inches)",
                  labelText: "Height (Inches): ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Height (Inches)';
                  }
                  return null;
                },

                onChanged: (String? heightNew) {
                  setState(() {
                    globals.height = heightNew!;
                  });
                },

              ),
            ),

            const SizedBox(height: 6,),

            Container(
              padding: const EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.green,
                  width: 5,
                )
              ),

              child: Column(
                children: <Widget> [
                  const Text("Average Exercise:",
                    style: TextStyle(
                        fontSize: 16
                    ),),

                  DropdownButton<String>(

                      value: dropDownValue,
                      items: const [
                        DropdownMenuItem(
                            value: 'None',
                            child: Text("No Exercise")
                        ),

                        DropdownMenuItem(
                            value: 'Light',
                            child: Text("1-3 Days Per Week")
                        ),

                        DropdownMenuItem(
                            value: 'Moderate',
                            child: Text("3-5 Days Per Week")
                        ),

                        DropdownMenuItem(
                            value: 'Hard',
                            child: Text("6-7 Days Per Week")
                        ),

                        DropdownMenuItem(
                            value: 'Extreme',
                            child: Text("Physical Job and 7 Days Per Week")
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          globals.activityLevel = value!;
                          dropDownValue = value;
                        });
                      }

                  ),
                ],
              ),
            ),


            const SizedBox(height: 8,),

            SizedBox(
                height: 50,
                width: 150,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green
                  ),
                  onPressed: () {
                    calculateCals();
                  },
                  child: const Text(
                      "Calculate Calories",
                    textAlign: TextAlign.center,
                  ),
                )
            ),

            const SizedBox(height: 25,),


            Text("$dailyCalories Calories Per Day",
              style: const TextStyle(
                fontSize: 22,
              ),
            ),

          ],
        ),
      )
    );
  }
}