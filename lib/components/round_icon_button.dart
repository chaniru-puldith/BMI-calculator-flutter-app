import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 52.0,
        height: 52.0,
      ),
      shape: const CircleBorder(),
      fillColor: kRoundButtonFillColor,
      splashColor: kPinkColor,
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
