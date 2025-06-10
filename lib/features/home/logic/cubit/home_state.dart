
import 'package:advanced_app/core/network/api_error_handler.dart';
import 'package:advanced_app/core/network/api_error_model.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = SpecializationsLoading;
  const factory HomeState.success(List<SpecializationsData?> specializationsResponseModel) = SpecializationsSuccess;
  const factory HomeState.error(ApiErrorModel errorhandler) = SpecializationsError;

  //doctors 

  const factory HomeState.doctorsSuccess(List<Doctors?> doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError() = DoctorsError;
}
