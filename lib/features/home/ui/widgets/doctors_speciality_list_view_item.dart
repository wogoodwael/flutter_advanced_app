import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key,
    required this.specializationsDataList,
    required this.index,
  });

  final List<SpecializationsData?>? specializationsDataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: 120.w,
        decoration: BoxDecoration(
          color: ColorsManager.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            specializationsDataList?[index]?.name ?? "",
            style: TextStyles.openSans16SemiBold.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
