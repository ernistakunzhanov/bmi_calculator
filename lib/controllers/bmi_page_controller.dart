import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:bmi_calculator/app_data/enums/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiPageController extends GetxController {
  RxInt _weight = 50.obs;
  RxInt _age = 20.obs;
  RxDouble _height = 150.0.obs;

  Rx<Color> activeColor = AppColors.selected.obs;
  Rx<Color> inactiveColor = AppColors.unselected.obs;
  Rx<Gender> gender = Gender.NONE.obs;

  void incrementWeight() {
    _weight++;
  }

  void decrementWeight() {
    _weight--;
  }

  void incrementAge() {
    _age++;
  }

  void decrementAge() {
    _age--;
  }

  void changeGender(Gender chosenGender) {
    gender.value = chosenGender;
  }

  void changeActiveColor(Color chosenColor) {
    activeColor.value = chosenColor;
  }

  void changeInactiveColor(Color chosenColor) {
    inactiveColor.value = chosenColor;
  }

  ///Getter - alyp keluuchu
  /// Privatnyi veriabledi syrttan ozgortuu
  RxDouble get getHeight => _height;

  set setHeight(double value) {
    _height.value = value;
  }

  RxInt get getWeight => _weight;

  set setWeight(int value) {
    _weight.value = value;
  }

  RxInt get getAge => _age;

  set setAge(int value) {
    _age.value = value;
  }
}
