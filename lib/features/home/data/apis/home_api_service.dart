import 'package:advanced_app/core/network/api_constants.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  @GET(ApiConstants.specializqationsEP)
  Future<SpecializationsResponseModel> getSpecializations();
}
