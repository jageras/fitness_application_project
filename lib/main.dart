import 'package:flutter/material.dart';

import 'menuPage.dart';

void main() {
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
