import 'package:advanced_app/core/network/api_error_handler.dart';
import 'package:advanced_app/core/network/api_result.dart';
import 'package:advanced_app/core/network/api_services.dart';
import 'package:advanced_app/features/auth/login/data/models/login_req_body.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
