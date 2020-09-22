import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import '../calculator_brain.dart';

CalculatorBrain cb = CalculatorBrain();

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

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
            child: Container(
              padding: EdgeInsets.all(15.0),
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
              colour: kActiveCardColor,
              cardChild: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
