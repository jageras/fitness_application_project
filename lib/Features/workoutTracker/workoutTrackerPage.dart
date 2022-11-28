import 'package:fitness_application_project/Features/workoutTracker/data/database.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'utils/dialogBox.dart';
import 'utils/exerciseTile.dart';

class workoutTrackerPage extends StatefulWidget {
  @override
  workoutTrackerPageState createState() => workoutTrackerPageState();
}

class workoutTrackerPageState extends State<workoutTrackerPage> {

  //hive reference
  final _exerciseBox = Hive.box("exerciseBox");
  ExerciseDatabase db = ExerciseDatabase();

  @override
  void initState() {
    //if this is first time opening app, create default data
    if (_exerciseBox.get("EXERCISELIST") == null) {
      db.createInitData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //text controller
  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.exerciseList[index][1] = !db.exerciseList[index][1];
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.exerciseList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  void createNewExercise() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteExercise(int index) {
    setState(() {
      db.exerciseList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {
          navToMenuPage(context);
        }),
        title: const Text('Workout Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: createNewExercise,
          ),
        ],
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: db.exerciseList.length,
          itemBuilder: (context, index) {
            return ExerciseTile(
              exerciseName: db.exerciseList[index][0],
              exerciseCompleted: db.exerciseList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: (context) => deleteExercise(index),
            );
          }
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container (
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  child: const Text(
                    "See Full Week", style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    null;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
