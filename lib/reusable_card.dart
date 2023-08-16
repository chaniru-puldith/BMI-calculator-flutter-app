import 'package:flutter/cupertino.dart';

const cardMargin = EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0);
final roundBorder = BorderRadius.circular(10.0);

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  const ReusableCard({super.key, required this.cardColor, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: cardMargin,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: roundBorder,
      ),
      child: cardChild,
    );
  }
}