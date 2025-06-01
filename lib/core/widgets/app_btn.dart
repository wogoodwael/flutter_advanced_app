import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.title, this.onPressed, this.color});

  final String? title;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        disabledBackgroundColor:color?? ColorsManager.primary,
        backgroundColor:color?? ColorsManager.primary,
        minimumSize: Size(double.infinity, 52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      //some spaces
      onPressed: onPressed,
      child: Text(
        title ?? "Get Started",
        style: TextStyles.font16White600Weight,
      ),
    );
    //test
  }
}
