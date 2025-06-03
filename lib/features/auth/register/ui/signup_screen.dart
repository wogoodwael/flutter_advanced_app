import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/core/widgets/app_btn.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_cubit.dart';
import 'package:advanced_app/features/auth/register/ui/widgets/already_have_account.dart';
import 'package:advanced_app/features/auth/register/ui/widgets/form_sign_up.dart';
import 'package:advanced_app/features/auth/register/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create New Account",
          style: TextStyles.openSans26BoldPrimary,
        ),
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
                FormSignUp(),

                verticalSpace(5),
                AppButton(
                  title: "Sign Up ",
                  onPressed: () {
                    validateThenDoSignUp(context);
                  },
                ),
                verticalSpace(30),
                Center(child: AlreadyHaveAccount()),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
///www@gg.com
///ww@ww.com
///Wogoodwael#123
  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignupCubit>().fullNameKey.currentState!.validate() &&
        context.read<SignupCubit>().passwordformKey.currentState!.validate() &&
        context.read<SignupCubit>().emailformKey.currentState!.validate() &&
        context.read<SignupCubit>().mobileNumberKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUpStates();
    }
  }
}
