import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final bool exerciseCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ExerciseTile({
    super.key,
    required this.exerciseName,
    required this.exerciseCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right:25.0, top:25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.greenAccent,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Checkbox(
                value: exerciseCompleted,
                onChanged: onChanged,
                activeColor: Colors.white,
                checkColor: Colors.green,
              ),
              Text(exerciseName, style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}