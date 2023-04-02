import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:bmi_calculator/app_data/repos/bmi_repo.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/custom_main_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    @required this.bmiResult,
    Key key,
  }) : super(key: key);

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 0.9,
          child: CustomCard(
            bgColor: AppColors.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  bmiRepo.getResult(bmiResult),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bmiResult.toStringAsFixed(1),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    bmiRepo.getInterpretation(bmiResult),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: "Re-Calculate",
        onPressed: () {},
      ),
    );
  }
}
