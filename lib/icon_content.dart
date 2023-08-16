import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardLabel;
  final Color labelColor;

  IconContent({
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
        SizedBox(
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