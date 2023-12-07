import 'package:bmi_calculater/constant.dart';
import 'package:bmi_calculater/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  int weight = 65;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      child: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      child: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusebleCard(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.round().toString(),
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: kBottonContainerColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 14),
                        ),
                        child: Slider(
                          value: height,
                          min: 10,
                          max: 310,
                          onChanged: (newVal) {
                            setState(() {
                              height = newVal;
                              print(newVal);
                            });
                          },
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  iconData: Icons.remove,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RoundButton(
                                  iconData: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'yrs',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  iconData: Icons.remove,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RoundButton(
                                  iconData: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              fillColor: kBottonContainerColor,
              constraints: BoxConstraints.tightFor(
                width: double.infinity,
                height: 56,
              ),
            )
          ],
        ));
  }
}
