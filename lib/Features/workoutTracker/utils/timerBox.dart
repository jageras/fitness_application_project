import 'package:fitness_application_project/Features/workoutTracker/utils/myButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimerBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  TimerBox({
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
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter number of seconds",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    buttonName: "Start",
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