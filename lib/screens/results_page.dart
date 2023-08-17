import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
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
              Expanded(
                child: Container(
                  child: Text(
                    'Your Result',
                    style: kResultTitleTextStyle,
                  ),
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
                        'Normal',
                        style: TextStyle(
                          color: kResultNormalColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '18.3',
                        style: kBMITextStyle,
                      ),
                      Text(
                        'Your BMI value is quite low!',
                        style: kResultDescriptionStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
