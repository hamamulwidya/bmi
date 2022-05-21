import 'package:bmi/constants/constant.dart';
import 'package:bmi/helpers/bmi_calculator.dart';
import 'package:bmi/views/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 50;
  int age = 20;
  String? gender;

  // double calculateBmi() {
  //   double heightInMeter = height / 100;

  //   // final h = pow(height, 2);
  //   final h = (heightInMeter * heightInMeter);
  //   final bmi = weight / h;

  //   return bmi;
  // }

  List<Widget> generateList(start, end) {
    List<Widget> weigths = [];
    for (var i = start; i < end; i++) {
      weigths.add(
        Text(
          "$i",
          style: labelTextStyle!.copyWith(
            fontSize: 20,
          ),
        ),
      );
    }
    return weigths;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                ListTile(
                  title: Text("Pria"),
                  leading: Radio(
                      value: "Pria",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }),
                ),
                ListTile(
                  title: Text("Wanita"),
                  leading: Radio(
                      value: "Wanita",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
    this.borderColor = Colors.white,
  }) : super(key: key);

  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(-2, 2),
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1))
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor!),
        ),
        margin: const EdgeInsets.all(15),
        child: child);
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: primaryColor,
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
