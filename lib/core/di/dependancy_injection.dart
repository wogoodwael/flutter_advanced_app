import 'package:advanced_app/core/network/api_services.dart';
import 'package:advanced_app/core/network/dio_factory.dart';
import 'package:advanced_app/features/auth/login/data/repos/login_repo.dart';
import 'package:advanced_app/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:advanced_app/features/auth/register/data/repos/sign_up_repo.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
