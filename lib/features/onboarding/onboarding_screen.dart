import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/features/onboarding/widgets/doclogo_and_name.dart';
import 'package:advanced_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:advanced_app/core/widgets/app_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                DoclogoAndName(),
                SizedBox(height: 40.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: TextStyles.font13GreyRegular,
                      ),
                      SizedBox(height: 30.h),
                      AppButton(
                        onPressed: () {
                          context.pushNamed(Routes.login);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
