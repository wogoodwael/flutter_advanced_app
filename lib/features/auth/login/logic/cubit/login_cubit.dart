import 'package:advanced_app/core/helper/constants.dart';
import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/network/dio_factory.dart';
import 'package:advanced_app/features/auth/login/data/repos/login_repo.dart';
import 'package:advanced_app/features/auth/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_req_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final passwordformKey = GlobalKey<FormState>();
  final emailformKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? "");
        emit(LoginState.success(loginResponse));
      },
      failure:
          (errors) =>
              emit(LoginState.error(error: errors.apiErrorModel.message ?? "")),
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
