import 'package:flutter/material.dart';
import 'package:fitness_application_project/navigation.dart';

class yourDataPage extends StatefulWidget {
  @override
  yourDataPageState createState() => yourDataPageState();
}

class yourDataPageState extends State<yourDataPage> {

  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.green,

          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: (){
              navToMenuPage(context);
            },
          ),
        ),

        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Height in inches',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight in pounds',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: CalcBMI,
                child: const Text(
                  "Calculate BMI",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                _result == null ? "Enter Value" : "BMI : ${_result.toStringAsFixed(2)}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
    );
  }

  void CalcBMI() {
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text);

    double squareheight = height * height;
    double result = (weight / squareheight) * 703;
    _result = result;
    setState(() {});
  }
}