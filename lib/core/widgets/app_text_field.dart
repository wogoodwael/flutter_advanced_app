import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.formKey,
    required this.headerText,
    required this.hintText,
    this.type,
  });
  final GlobalKey<FormState>? formKey;
  final String headerText;
  final String hintText;
  final CustomTextFieldType? type;

  @override
  Widget build(BuildContext context) {
    return CustomFormW(
      spaceHeaders: 1,
      formKey: formKey,
      padding: EdgeInsets.zero,
      showButton: false,
      children: [
        CustomTextField(
          visibiltyColor: ColorsManager.primary,
          headerText: headerText,
          headerTextStyle: TextStyles.openSans20SemiBold,
          withoutLabel: true,
          type: type ?? CustomTextFieldType.text,
          enabledBorderColor: ColorsManager.grey.withValues(alpha: .06),
          hint: hintText,
          hintStyle: TextStyles.openSans16Regulargrey,
          fillColor: ColorsManager.grey.withValues(alpha: .1),
        ),
      ],
    );
  }
}
