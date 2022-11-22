
import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../globalVariables.dart' as globals;


class addFoodPage extends StatefulWidget {
  @override
  addFoodPageState createState() => addFoodPageState();
}

class addFoodPageState extends State<addFoodPage> {
  String dropDownValue = "Breakfast";

  String createFoodMessage = "";

  @override
  void initState() {
    globals.currentMeal = dropDownValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Add Food"),
        
        leading: IconButton(
          onPressed: () {
            navToFoodTracker(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Restaurant or Brand",
                  labelText: "Restaurant or Brand: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Restaurant or Brand';
                  }
                  return null;
                },

                onChanged: (String? restaurantsNew) {
                  setState(() {
                    globals.restaurants = restaurantsNew!;
                  });
                },

              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Food Item",
                  labelText: "Food Item: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Food Item';
                  }
                  return null;
                },

                onChanged: (String? foodItemNew) {
                  setState(() {
                    globals.foodItem = foodItemNew!;
                  });
                },

              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Calories",
                  labelText: "Calories: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Calories';
                  }
                  return null;
                },

                onChanged: (String? foodItemCalsNew) {
                  setState(() {
                    globals.foodItemCals = foodItemCalsNew!;
                  });
                },

              ),
            ),

            const SizedBox(height: 10,),

            DropdownButton<String>(

                value: dropDownValue,
                items: const [
                  DropdownMenuItem(
                      value: 'Breakfast',
                      child: Text("Breakfast")
                  ),

                  DropdownMenuItem(
                      value: 'Lunch',
                      child: Text("Lunch")
                  ),

                  DropdownMenuItem(
                      value: 'Dinner',
                      child: Text("Dinner")
                  ),

                  DropdownMenuItem(
                      value: 'Dessert',
                      child: Text("Dessert")
                  ),

                  DropdownMenuItem(
                      value: 'Snack',
                      child: Text("Snack")
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    globals.currentMeal = value!;
                    dropDownValue = value;
                  });
                }

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
                    try {
                      FirebaseFirestore.instance.collection('UserData').doc(globals.username).collection(globals.formattedDate).doc(globals.currentMeal).set({'restaurant' : globals.restaurants, 'food item' : globals.foodItem, 'calories' : globals.foodItemCals, 'current meal' : globals.currentMeal});
                      navToFoodTracker(context);
                    } catch (e) {
                      setState(() {
                        createFoodMessage = "Please enter all required information";
                      });
                    }
                  },
                  child: const Text(
                      "Create Food"
                  ),
                )
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.60,

              child: FittedBox(
                child: Text(createFoodMessage,
                  textAlign: TextAlign.center,),
              ),
            )

          ],
        ),
      ),
    );
  }
}