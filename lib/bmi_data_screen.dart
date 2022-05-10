import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiDataScree extends StatefulWidget {
  const BmiDataScree({Key? key}) : super(key: key);

  @override
  State<BmiDataScree> createState() => _BmiDataScreeState();
}

class _BmiDataScreeState extends State<BmiDataScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
          )),
          Expanded(
              child: Container(
            color: Colors.yellow,
          )),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return BmiResultScreen();
                  }),
                ),
              );
            },
            child: Container(
              height: 60,
              color: Colors.blue,
              child: Center(child: Text("Hitung BMI")),
            ),
          ),
        ],
      ),
    );
  }
}
