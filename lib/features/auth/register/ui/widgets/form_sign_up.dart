import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/widgets/app_text_field.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_cubit.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController fullNameController;
  late TextEditingController phoneController;
  late GlobalKey<FormState> emailFormKey;
  late GlobalKey<FormState> passwordFormKey;
  late GlobalKey<FormState> nameFormKey;
  late GlobalKey<FormState> phoneFormKey;

  @override
  void initState() {
    final signupCupit = context.read<SignupCubit>();
    emailController = signupCupit.emailController;
    passwordController = signupCupit.passwordController;
    fullNameController = signupCupit.nameController;
    phoneController = signupCupit.phoneController;

    emailFormKey = signupCupit.emailformKey;
    passwordFormKey = signupCupit.passwordformKey;
    phoneFormKey = signupCupit.mobileNumberKey;
    nameFormKey = signupCupit.fullNameKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          formKey: nameFormKey,
          isRequired: true,
          headerText: "FullName",
          hintText: "Enter Your name",
          controller: fullNameController,
        ),
        verticalSpace(10),
        AppTextField(
          formKey: passwordFormKey,
          isRequired: true,

          type: CustomTextFieldType.password,
          headerText: "Password",
          hintText: "Enter Your Password",
          controller: passwordController,
        ),
        AppTextField(
          formKey: emailFormKey,
          isRequired: true,
          headerText: "Email",
          hintText: "Enter Your Email",
          controller: emailController,
          type: CustomTextFieldType.email,
        ),
        verticalSpace(10),
        AppTextField(
          formKey: phoneFormKey,
          isRequired: true,
          headerText: "Mobile Number ",
          hintText: "Enter Your Mobile Number",
          controller: phoneController,
        ),
      ],
    );
  }
}
