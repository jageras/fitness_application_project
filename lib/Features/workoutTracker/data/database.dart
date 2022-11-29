import 'package:hive_flutter/hive_flutter.dart';

class ExerciseDatabase {
  // list of exercises
  List exerciseList = [];

  final _exerciseBox = Hive.box("exerciseBox");

  void createInitData() {
    exerciseList = [];
  }

  void loadData() {
    exerciseList = _exerciseBox.get("EXERCISELIST");
  }

  void updateDatabase() {
    _exerciseBox.put("EXERCISELIST", exerciseList);
  }
}