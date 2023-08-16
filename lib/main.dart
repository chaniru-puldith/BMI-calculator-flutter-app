import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:  Color(0xFF0A0E21),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0E21),
            secondary: Colors.purple,
          ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}


