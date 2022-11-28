import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../navigation.dart';

import '../globalVariables.dart' as globals;

class verifyPage extends StatefulWidget {
  @override
  _verifyPageState createState() => _verifyPageState();
}

class _verifyPageState extends State<verifyPage> {
  String databasePush = "";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(

        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: const FittedBox(
                    child: Text(
                        "Confirm\nUser Information",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Text(
                  globals.firstName,
                  style: const TextStyle(
                    fontSize: 18
                  ),
                ),

                Text(
                  globals.lastName,
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),

                Text(
                  globals.gender,
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),

                Text(
                  globals.username,
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),

                Text(
                  globals.password,
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),

                const SizedBox(height: 20,),

                SizedBox(
                    height: 50,
                    width: 150,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green
                      ),
                      onPressed: () {
                        {
                          try {
                            FirebaseFirestore.instance.collection('UserData').doc(globals.username).set({'username' : globals.username});
                            FirebaseFirestore.instance.collection('authentication').doc(globals.username).set({ 'first name' : globals.firstName, 'last name' : globals.lastName, 'gender' : globals.gender, 'username' : globals.username, 'password' : globals.password});
                            navBackToAuth(context);
                          } catch (e) {
                            setState(() {
                              databasePush = "Please enter all required information";
                            });
                          }
                        }
                      },
                      child: const Text(
                          "Create User"
                      ),
                    )
                ),

                const SizedBox(height: 15,),

                SizedBox(
                    height: 50,
                    width: 150,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green
                      ),
                      onPressed: () {
                        {
                          navToCreateNewUser(context);
                        }
                      },
                      child: const Text(
                          "Back"
                      ),
                    )
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: FittedBox(
                    child: Text(databasePush,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),


              ],
            ),
          ),
        )
    );
  }
}