import 'package:fitness_application_project/Features/workoutTracker/utils/myButton.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Add a new exercise",
                    hintStyle: TextStyle(color: Colors.white)
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    buttonName: "Save",
                    onPressed: onSave,
                  ),
                  const SizedBox(width: 8),
                  MyButton(
                    buttonName: "Cancel",
                    onPressed: onCancel,
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}