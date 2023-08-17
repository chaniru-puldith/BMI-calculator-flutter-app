import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonTitle;

  const BottomButton({
    super.key,
    required this.onPress,
    required this.buttonTitle
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: kBottomContainerMargin,
        width: double.infinity,
        height: 80.0,
        decoration: BoxDecoration(
          color: kPinkColor,
          borderRadius: roundBorder,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
