import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String resultText = 'Normal';
  final String resultDescriptionText = 'Your BMI value is quite low!';
  final double valueBMI = 18.3;
  final Color resultTextColor = kResultNormalColor;

  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: kPageMargin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Expanded(
                child: Text(
                  'Your Result',
                  style: kResultTitleTextStyle,
                ),
              ),
              Expanded(
                flex: 6,
                child: ReusableCard(
                  cardColor: kDefaultCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        resultText,
                        style: TextStyle(
                          color: resultTextColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        valueBMI.toString(),
                        style: kBMITextStyle,
                      ),
                      Text(
                        resultDescriptionText,
                        style: kResultDescriptionStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPress: () {},
                ),
              ),
              BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
