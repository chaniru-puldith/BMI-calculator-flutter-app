import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int weight;
  final int height;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultDescription() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color getResultTextColor() {
    if (_bmi >= 25) {
      return const Color(0xFFfcad44);
    } else if (_bmi > 18.5) {
      return const Color(0xFF24D876);
    } else {
      return const Color(0xFFff7859);
    }
  }

}