import 'package:advanced_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

}
