import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:bmi_calculator/app_data/enums/app_enums.dart';
import 'package:bmi_calculator/app_data/repos/bmi_repo.dart';
import 'package:bmi_calculator/controllers/bmi_page_controller.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/custom_main_button.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BmiPage extends StatelessWidget {
  BmiPage({Key key}) : super(key: key);

  final BmiPageController _bmiPageController =
      Get.put<BmiPageController>(BmiPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => CustomCard(
                      bgColor: _bmiPageController.gender.value == Gender.MALE
                          ? _bmiPageController.activeColor.value
                          : _bmiPageController.inactiveColor.value,
                      child: GendersWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        onTap: () =>
                            _bmiPageController.changeGender(Gender.MALE),
                      ),
                    )),
                const SizedBox(width: 20),
                Obx(() => CustomCard(
                      bgColor: _bmiPageController.gender.value == Gender.FEMALE
                          ? _bmiPageController.activeColor.value
                          : _bmiPageController.inactiveColor.value,
                      child: GendersWidget(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        onTap: () =>
                            _bmiPageController.changeGender(Gender.FEMALE),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CustomCard(
              bgColor: AppColors.secondaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Obx(
                  () => HeightWidget(
                    sliderValue: _bmiPageController.getHeight.value,
                    onChanged: (double userChanged) {
                      _bmiPageController.setHeight = userChanged;
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                  bgColor: AppColors.secondaryColor,
                  child: Obx(
                    () => WeightAgeWidget(
                        text: 'Weight'.toUpperCase(),
                        countText: _bmiPageController.getWeight.toString(),
                        onMinus: () => _bmiPageController.decrementWeight(),
                        onPlus: () => _bmiPageController.incrementWeight()),
                  ),
                ),
                const SizedBox(width: 20),
                CustomCard(
                  bgColor: AppColors.secondaryColor,
                  child: Obx(() => WeightAgeWidget(
                        text: 'Age'.toUpperCase(),
                        countText: _bmiPageController.getAge.toString(),
                        onMinus: () => _bmiPageController.decrementAge(),
                        onPlus: () => _bmiPageController.incrementAge(),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: 'Calculate'.toUpperCase(),
        onPressed: () {
          // bmiBrain.calculateBmi(_weight, _height);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(
                        bmiResult: bmiRepo.calculateBmi(
                          _bmiPageController.getWeight.value,
                          _bmiPageController.getHeight.value,
                        ),
                      )));
        },
      ),
    );
  }
}
