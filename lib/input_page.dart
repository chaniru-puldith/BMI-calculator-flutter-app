import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const pageMargin = EdgeInsets.all(15.0);
const cardMargin = EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0);
const defaultCardColor = Color(0xFF1D1E33);
final double deviceHeight = (WidgetsBinding.instance.window.physicalSize.height);
final roundBorder = BorderRadius.circular(10.0);
const bottomContainerMargin =  EdgeInsets.fromLTRB(5, 15, 5, 0);
const bottomContainerColor = Color(0xFFEB1555);
const defaultCardTextColor = Color(0xFF8D8E98);
const activeCardTextColor = Color(0xFFFFFFFF);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = defaultCardColor;
  Color femaleCardColor = defaultCardColor;
  Color maleLabelColor = defaultCardTextColor;
  Color femaleLabelColor = defaultCardTextColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Padding(
          padding: pageMargin,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateCardColor(1);
                          });
                        },
                        child: ReusableCard(
                          cardColor: maleCardColor,
                          cardChild: IconContent(
                            cardIcon: FontAwesomeIcons.mars,
                            cardLabel: 'MALE',
                            labelColor: maleLabelColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateCardColor(2);
                          });
                        },
                        child: ReusableCard(
                          cardColor: femaleCardColor,
                          cardChild: IconContent(
                            cardIcon: FontAwesomeIcons.venus,
                            cardLabel: 'FEMALE',
                            labelColor: femaleLabelColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: defaultCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        cardColor: defaultCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: maleLabelColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: defaultCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: defaultCardTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: bottomContainerMargin,
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: bottomContainerColor,
                  borderRadius: roundBorder,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateCardColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == defaultCardColor) {
        maleCardColor = bottomContainerColor;
        maleLabelColor = activeCardTextColor;
        femaleCardColor = defaultCardColor;
        femaleLabelColor = defaultCardTextColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == defaultCardColor) {
        femaleCardColor = bottomContainerColor;
        femaleLabelColor = activeCardTextColor;
        maleCardColor = defaultCardColor;
        maleLabelColor = defaultCardTextColor;
      }
    }
  }
}