import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem({
    super.key,
    required this.specializationsDataList,
    required this.index,
    required this.selectedIndex,
  });

  final List<SpecializationsData?>? specializationsDataList;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: selectedIndex == index
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 130.w,
              decoration: BoxDecoration(
                color: ColorsManager.secondary,
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    specializationsDataList?[index]?.name ?? "",
                    style: TextStyles.openSans16SemiBold.copyWith(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            )
          : Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 120.w,
              decoration: BoxDecoration(
                color: ColorsManager.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    specializationsDataList?[index]?.name ?? "",
                    style: TextStyles.openSans16SemiBold.copyWith(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
    );
  }
}
