import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.headerText,
    required this.hintText,
    this.type,
    required this.controller,
    required this.isRequired,
    this.formKey,
  });
  final String headerText;
  final String hintText;
  final CustomTextFieldType? type;
  final TextEditingController controller;
  final bool isRequired;
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    return CustomFormW(
      
      spaceHeaders: 1,
      padding: EdgeInsets.zero,
      showButton: false,
      formKey: formKey,
      children: [
        CustomTextField(
          label: headerText,
          controller: controller,
          isRequired: isRequired,
          requiredColor: Colors.white,
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
