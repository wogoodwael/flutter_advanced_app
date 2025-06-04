import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    fontSize: 24.sp, fontWeight: FontWeight.w700, 
    color: Colors.black
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp, fontWeight: FontWeight.bold, 
    color:ColorsManager.primary
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp, fontWeight: FontWeight.bold, 
    color:ColorsManager.grey
  );
  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp, fontWeight: FontWeight.w600, 
    color:Colors.white
  );
  static TextStyle openSans26BoldPrimary = GoogleFonts.openSans(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.primary,
  );
  static TextStyle openSans16Regulargrey = GoogleFonts.openSans(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );
  static TextStyle openSans12RegularWhite = GoogleFonts.openSans(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle openSans20SemiBold = GoogleFonts.openSans(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle openSans16SemiBold = GoogleFonts.openSans(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle openSans18SemiBold = GoogleFonts.openSans(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );
    static TextStyle font13DarkGreyMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.grey,
  );
  static TextStyle font13GreenSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.primary,
  );
}
