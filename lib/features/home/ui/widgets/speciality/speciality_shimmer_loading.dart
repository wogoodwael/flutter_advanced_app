import 'package:advanced_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.light,
                  highlightColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.light,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 50.h,
                    width: 120.w,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
