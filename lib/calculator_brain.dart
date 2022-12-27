import 'package:flutter/material.dart';
import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class CalculateBrain{

  CalculateBrain({ required this.height , required this.weight});

  final int height;
  final int weight;
  double _BMI = 18.3;

  String calculateBmi() {

    _BMI = weight / pow(height/100,  2);
    return _BMI.toStringAsFixed(1);
  }

  String getResults() {
    if(_BMI >= 25){
      return 'Overweight';
    }else if(_BMI > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_BMI >= 25){
      return 'You Have a Higher Than Normal Weight. Try To exercise more.';
    }else if(_BMI > 18.5){
      return 'You Have a Normal Body Weight. Its GREAT';
    }else{
      return 'You Have A Lower Than Normal Body Weight. Try To Eat More.';
    }
  }

}