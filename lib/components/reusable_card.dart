import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final VoidCallback onPress; // >>>>> final void Function() onPressed

  const ReusableCard({
    super.key,
    required this.cardColor,
    required this.cardChild,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: kCardMargin,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: roundBorder,
        ),
        child: cardChild,
      ),
    );
  }
}