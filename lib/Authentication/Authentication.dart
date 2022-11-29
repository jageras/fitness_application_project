import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

import '../globalVariables.dart' as globals;

class authenticationPage extends StatefulWidget {
  @override
  authenticationPageState createState() => authenticationPageState();
}

class authenticationPageState extends State<authenticationPage> {
  String signInMessage = "";

  @override
  void getData() async{

    try{
      final data =  await FirebaseFirestore.instance.collection("authentication").doc(globals.usernameCheck).get();
      if(globals.usernameCheck == data['username']) {
        if (globals.passwordCheck == data['password']){
          globals.username = globals.usernameCheck;
          navToMenuPage(context);
        }
        else {
          setState(() {
            signInMessage = "Password incorrect";
          });
        }
      }
      else {
        setState(() {
          signInMessage="Username incorrect";
        });
      }
    } catch (e) {
      setState(() {
        signInMessage = "Please review information\nor create new user";
      });
    }


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.75,
              child: const FittedBox(
                child: Text(
                  "myFitnessFriend"
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.25,
              child: const FittedBox(
                child: Text(
                    "Sign In"
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username",
                  labelText: "Username: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Username';
                  }
                  return null;
                },

                onChanged: (String? usernameNew) {
                  setState(() {
                    globals.usernameCheck = usernameNew!;
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
                  hintText: "Enter Password",
                  labelText: "Password: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Password';
                  }
                  return null;
                },

                onChanged: (String? passwordNew) {
                  setState(() {
                    globals.passwordCheck = passwordNew!;
                  });
                },

              ),
            ),

            SizedBox(
                height: 50,
                width: 150,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green
                  ),
                  onPressed: () {
                    getData();
                  },
                  child: const Text(
                      "Sign in"
                  ),
                )
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
                    navToCreateNewUser(context);
                  },
                  child: const Text(
                      "Create User"
                  ),
                )
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.60,

              child: FittedBox(
                child: Text(signInMessage,
                textAlign: TextAlign.center,),
              ),
            )



          ],
        ),
      ),
    );
  }
}