import 'dart:developer';

import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _sliderValue = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomCard(
                    bgColor: Color(0xff24263B),
                    child: GenderWidget(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                  SizedBox(width: 20),
                  CustomCard(
                    bgColor: Color(0xff24263B),
                    child: GenderWidget(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomCard(
                bgColor: const Color(0xff24263B),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: HeightWidget(
                    sliderValue: _sliderValue,
                    onChanged: (ozgorgon) {},
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: const [
                  CustomCard(
                    bgColor: Color(0xff24263B),
                    child: SizedBox(
                      height: 160,
                      child: Text('Bmi'),
                    ),
                  ),
                  CustomCard(
                    bgColor: Color(0xff24263B),
                    child: Text('Bmi'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
