import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFEB1555),
              height: 80.0,
              child: Center(
                child: Text(
                  'RE CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
