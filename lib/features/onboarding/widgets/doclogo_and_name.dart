import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoclogoAndName extends StatelessWidget {
  const DoclogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo.svg"),
        Text("DocDoc", style: TextStyles.font24Black700weight),
      ],
    );
  }
}
