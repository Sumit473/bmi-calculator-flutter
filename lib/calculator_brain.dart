import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@ required this.height, @required this.weight});

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'OVERWEIGHT';
    }
    else if (_bmi > 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'You have higher than normal body weight. Try to exercise more!';
    }
    else if (_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }
    else{
      return 'You have lower than the normal body weight. You should eat more!';
    }
  }
}