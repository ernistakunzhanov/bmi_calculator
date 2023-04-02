import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:bmi_calculator/app_constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  final String text;
  final String countText;
  final void Function() onPlus;
  final void Function() onMinus;
  const WeightAgeWidget({
    this.text,
    this.countText,
    this.onPlus,
    this.onMinus,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text.toUpperCase(),
            style: const TextStyle(fontSize: 25),
          ),
          Text(
            countText.toString(),
            style: AppTextStyles.ageOrWeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                // backgroundColor: const Color(0xff0b0e21),
                onPressed: onMinus,

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0b0e21),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                ),
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                // backgroundColor: const Color(0xff0b0e21),
                onPressed: onPlus,

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
