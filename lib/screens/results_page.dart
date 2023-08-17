import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultDescription;
  final Color resultTextColor;

  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.resultDescription,
    required this.resultTextColor
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: kResultPageMargin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 20.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Your Result',
                    style: kResultTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  cardColor: kDefaultCardColor,
                  cardChild: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          resultText.toUpperCase(),
                          style: TextStyle(
                            color: resultTextColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          resultDescription,
                          style: kResultDescriptionStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  onPress: () {},
                ),
              ),
              const SizedBox(
                height: 10.0,
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
