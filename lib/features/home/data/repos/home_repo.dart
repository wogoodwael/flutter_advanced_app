import 'package:advanced_app/core/network/api_error_handler.dart';
import 'package:advanced_app/core/network/api_result.dart';
import 'package:advanced_app/features/home/data/apis/home_api_service.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _homeApiService.getSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
