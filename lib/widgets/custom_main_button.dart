import 'package:bmi_calculator/app_constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    @required this.buttonText,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          color: Colors.red,
          child: Center(
            child: Text(
              buttonText,
              style: AppTextStyles.mainButton,
            ),
          ),
        ),
      ),
    );
  }
}
