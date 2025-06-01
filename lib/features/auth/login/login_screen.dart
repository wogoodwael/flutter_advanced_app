import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/core/widgets/app_btn.dart';
import 'package:advanced_app/core/widgets/app_text_field.dart';
import 'package:advanced_app/features/auth/login/widgets/dont_have_account_text.dart';
import 'package:advanced_app/features/auth/login/widgets/terms_and_conditions_text.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome", style: TextStyles.openSans26BoldPrimary),
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyles.openSans26BoldPrimary.copyWith(
                    color: Colors.black,
                  ),
                ),
                verticalSpace(8),
                Text(
                  "Korem ipsum dolor sit amet consectetur adipiscing elit.",
                  style: TextStyles.openSans16Regulargrey,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(40),
                AppTextField(headerText: "Email", hintText: "Enter Your Email"),
                verticalSpace(20),
                AppTextField(
                  type: CustomTextFieldType.password,
                  headerText: "Password",
                  hintText: "Enter Your Password",
                ),

                Align(
                  heightFactor: 3,
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forget Passowrd??",
                    style: TextStyles.openSans16SemiBold,
                  ),
                ),
                verticalSpace(5),
                AppButton(title: "Sign In "),
                verticalSpace(20),
                TermsAndConditionsText(),
                verticalSpace(30),
                Center(child: DontHaveAccountText()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
