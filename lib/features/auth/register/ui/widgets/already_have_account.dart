import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return     RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13DarkGreyMedium,
          ),
          TextSpan(
            text: ' Sign In',
            style: TextStyles.font13GreenSemiBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.login);
                  },
          ),
        ],
      ),
    );
 
  }
}