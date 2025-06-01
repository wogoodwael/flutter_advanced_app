import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkGreyMedium,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13GreenSemiBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.signUpScreen);
                  },
          ),
        ],
      ),
    );
  }
}
