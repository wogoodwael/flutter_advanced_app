import 'package:advanced_app/core/network/api_constants.dart';
import 'package:advanced_app/features/auth/login/data/models/login_req_body.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response_model.dart';
import 'package:advanced_app/features/auth/register/data/models/sign_up_request_body.dart';
import 'package:advanced_app/features/auth/register/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.loginLink)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
   @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
