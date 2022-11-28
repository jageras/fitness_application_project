import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'menuPage.dart';

void main() async {

  //init the hive and create box
  await Hive.initFlutter();
  var box = await Hive.openBox("exerciseBox");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menuPage(),
    );
  }
}
