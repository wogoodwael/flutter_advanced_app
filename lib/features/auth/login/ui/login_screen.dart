import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/core/widgets/app_btn.dart';
import 'package:advanced_app/features/auth/login/data/models/login_req_body.dart';
import 'package:advanced_app/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:advanced_app/features/auth/login/ui/widgets/dont_have_account_text.dart';
import 'package:advanced_app/features/auth/login/ui/widgets/email_and_password.dart';
import 'package:advanced_app/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced_app/features/auth/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                EmailAndPassword(),

                Align(
                  heightFactor: 3,
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forget Passowrd??",
                    style: TextStyles.openSans16SemiBold,
                  ),
                ),
                verticalSpace(5),
                AppButton(
                  title: "Sign In ",
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSpace(20),
                TermsAndConditionsText(),
                verticalSpace(30),
                Center(child: DontHaveAccountText()),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().emailformKey.currentState!.validate()&&context.read<LoginCubit>().passwordformKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
   
  }
}
