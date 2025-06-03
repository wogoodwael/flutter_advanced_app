import 'package:advanced_app/features/auth/register/data/models/sign_up_request_body.dart';
import 'package:advanced_app/features/auth/register/data/repos/sign_up_repo.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final passwordformKey = GlobalKey<FormState>();
  final emailformKey = GlobalKey<FormState>();
  final fullNameKey = GlobalKey<FormState>();
  final mobileNumberKey = GlobalKey<FormState>();
  void emitSignUpStates() async {
    emit(SignupState.signupLoading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) => emit(SignupState.signupSuccess(data)),
      failure:
          (error) => emit(
            SignupState.signupError(error: error.apiErrorModel.message ?? ""),
          ),
    );
  }
}
