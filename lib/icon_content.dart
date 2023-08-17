import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardLabel;
  final Color labelColor;

  const IconContent({
    super.key,
    required this.cardIcon,
    required this.cardLabel,
    required this.labelColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          cardLabel,
          style: TextStyle(
            fontSize: 18.0,
            color: labelColor,
          ),
        ),
      ],
    );
  }
}