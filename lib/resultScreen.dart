import 'package:flutter/material.dart';
import 'package:flutter_application_1/reuseableWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Calculator.dart';
import 'constants.dart';
import "reuseableWidget.dart";
import 'reuseableWidgetData.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.calc});
  final Calculator calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
        backgroundColor: kThemeCol,
      ),
      body: Column(children: [
        Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Your Result",
              style: kNumTxtStyle,
            )),
        Expanded(
          child: ReusableWidget(
            col: kInActiveCardCol,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child:
                        Text("NORMAL", style: TextStyle(color: Colors.green))),
                SizedBox(
                  height: 10,
                ),
                Center(child: Text(calc.calcBmi(), style: kNumTxtStyle)),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(calc.outMsg(),
                        style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        ),
        FlatButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: Container(
              width: double.infinity,
              height: 38,
              //color: kBottomContCol,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBottomContCol),
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Center(
                  child: Text(
                "RE-CALCULATE YOUR BMI",
                style: TextStyle(color: Colors.white),
              ))),
        )
      ]),
    );
  }
}
