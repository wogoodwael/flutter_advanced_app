import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
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
            width: 170.w,
            height: 200.w,
            fit: BoxFit.contain,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      doctorModel?.name ?? "",
                      style: TextStyles.openSans16SemiBold,
                    ),
                  ),
                  Icon(Icons.favorite_border, color: ColorsManager.primary),
                ],
              ),
              verticalSpace(5),
              SizedBox(
                width: 150.w,
                child: Text(
                  doctorModel?.degree ?? " ${doctorModel?.gender}" ,
                  textAlign: TextAlign.start,
                  style: TextStyles.openSans12RegularWhite.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 170.w,
                child: Text(
                  doctorModel?.email ?? "",
                  textAlign: TextAlign.start,
                  style: TextStyles.openSans12RegularWhite.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 150.w,
                child: Text(
                  doctorModel?.phone ?? "",
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
  }
}
