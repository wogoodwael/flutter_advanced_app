import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theme/colors.dart';
import 'package:advanced_app/core/theme/styles.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_cubit.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return     BlocListener<SignupCubit, SignupState>(
      listenWhen:
          (previous, current) =>
              current is SignupLoading || current is SignupSuccess || current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            Center(
              child: CircularProgressIndicator(color: ColorsManager.primary),
            );
          },
          signupSuccess: (data) {
            context.pushNamed(Routes.homeScreen);
          },
          signupError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error, style: TextStyles.font13GreenSemiBold),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: TextStyles.font13GreenSemiBold),
              ),
            ],
          ),
    );
  }

  }
