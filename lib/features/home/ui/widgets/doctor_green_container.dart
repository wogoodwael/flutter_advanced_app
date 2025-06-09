import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorGreenContainer extends StatelessWidget {
  const DoctorGreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SharedPrefHelper.clearAllSecuredData();
      },
      child: SizedBox(
        height: 195.h,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 160.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: ColorsManager.primary,
              ),
              child: Row(
                children: [
                  Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Medical Center",
                        style: TextStyles.openSans26BoldPrimary.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Text(
                          "Yorem ipsum dolor sit amet, consectetur adipiscing elit ac aliquet odio mattis.",
                          style: TextStyles.openSans12RegularWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: -50.w,
              top: 0,
              child: Image.asset("assets/images/female_doc.png", height: 200.h),
            ),
          ],
        ),
      ),
    );
  }
}
