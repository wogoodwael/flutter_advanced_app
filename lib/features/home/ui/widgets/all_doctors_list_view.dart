import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllDoctorsListView extends StatelessWidget {
  const AllDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 5.h),
            height: 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsManager.primary.withValues(alpha: .1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/doctor.png",
                  width: 190.w,
                  height: 200.w,
                  fit: BoxFit.contain,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Dr.Pawan", style: TextStyles.openSans18SemiBold),
                        horizontalSpace(40.w),
                        Icon(
                          Icons.favorite_border,
                          color: ColorsManager.primary,
                        ),
                      ],
                    ),
                    verticalSpace(10),
                    SizedBox(
                      width: 140.w,
                      child: Text(
                        "Jorem ipsum dolor consectetur adipiscing elit ac  mattis.",
                        textAlign: TextAlign.start,
                        style: TextStyles.openSans12RegularWhite.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    verticalSpace(10),

                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsManager.primary,
                            elevation: 0,
                            minimumSize: Size(70.w, 35.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Book",
                            style: TextStyles.openSans16Regulargrey.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        horizontalSpace(25.w),
                        Icon(Icons.star, color: Colors.orange),
                        Text("5.0", style: TextStyles.openSans16SemiBold),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
