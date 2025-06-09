
import 'package:advanced_app/core/network/api_error_handler.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = SpecializationsLoading;
  const factory HomeState.success(SpecializationsResponseModel specializationsResponseModel) = SpecializationsSuccess;
  const factory HomeState.error(ErrorHandler errorhandler) = SpecializationsError;
}
