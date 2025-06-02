import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/widgets/app_text_field.dart';
import 'package:advanced_app/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> emailFormKey;
  late GlobalKey<FormState> passwordFormKey;

  @override
  void initState() {
    final loginCubit = context.read<LoginCubit>();
    emailController = loginCubit.emailController;
    passwordController = loginCubit.passwordController;
    emailFormKey = loginCubit.emailformKey;
    passwordFormKey = loginCubit.passwordformKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          formKey: emailFormKey,
          isRequired: true,
          headerText: "Email",
          hintText: "Enter Your Email",
          controller: emailController,
          type: CustomTextFieldType.email,
        ),
        verticalSpace(20),
        AppTextField(
          formKey: passwordFormKey,
          isRequired: true,
          
          type: CustomTextFieldType.password,
          headerText: "Password",
          hintText: "Enter Your Password",
          controller: passwordController,
        ),
      ],
    );
  }
}
