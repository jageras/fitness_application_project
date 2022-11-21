import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

import '../globalVariables.dart' as globals;


class createNewUserPage extends StatefulWidget {
  @override
  createNewUserPageState createState() => createNewUserPageState();
}

class createNewUserPageState extends State<createNewUserPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                    "Create New User"
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.37,

              child: TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter First Name",
                  labelText: "First Name: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter First Name';
                  }
                  return null;
                },

                onChanged: (String? firstNameNew) {
                  setState(() {
                    globals.firstName = firstNameNew!;
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
                  hintText: "Enter Last Name",
                  labelText: "Last Name: ",
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Last Name';
                  }
                  return null;
                },

                onChanged: (String? lastNameNew) {
                  setState(() {
                    globals.lastName = lastNameNew!;
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
                    globals.username = usernameNew!;
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
                    globals.password = passwordNew!;
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
                    navToVerify(context);
                  },
                  child: const Text(
                      "Create User"
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
                    navBackToAuth(context);
                  },
                  child: const Text(
                      "Back"
                  ),
                )
            )



          ],
        ),
      ),
    );
  }
}