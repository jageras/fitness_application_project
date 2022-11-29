import 'dart:async';

import 'package:fitness_application_project/Features/workoutTracker/data/database.dart';
import 'package:fitness_application_project/Features/workoutTracker/utils/timerBox.dart';
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
  final _timerController = TextEditingController();

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

  void createNewTimer() {
    showDialog(
      context: context,
      builder: (context) {
        return TimerBox(
          controller: _timerController,
          onSave: () => setTimer(int.parse(_timerController.text)),
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  late Timer _timer;
  late int _counter = 60;
  late bool timerSet = false;
  late bool timerFinished = true;

  void setTimer(int seconds) {
    _counter = seconds;
    if (!timerFinished) {
      timerSet = false;
      timerFinished = true;
      _timer.cancel();
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          timerSet = false;
          timerFinished = true;
          _timer.cancel();
        }
      });
    });
    timerSet = true;
    _timerController.clear();
    Navigator.of(context).pop();
  }

  bool isExerciseListEmpty() {
    return db.exerciseList.isEmpty;
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
        title: const Text('Exercise To-do List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.access_alarm),
            onPressed: createNewTimer,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: createNewExercise,
          ),
        ],
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Visibility(
          child: Column(
              children: <Widget> [
                if (isExerciseListEmpty()) Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    "You have not logged any exercises yet. Please add a new exercise by clicking the Add-icon in the top right.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                ListView.builder(
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
              ]
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (_counter > 0)? const Text("") : const Text("Timer Done!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 30),),
              if (timerSet) Text(
                  '$_counter',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green,
                  )
              ),
            ]
        ),
      ),
    );
  }
}