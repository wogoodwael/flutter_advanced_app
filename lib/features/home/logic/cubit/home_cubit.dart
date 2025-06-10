import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/network/api_error_handler.dart';
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:advanced_app/features/home/data/repos/home_repo.dart';
import 'package:advanced_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  List<SpecializationsData?>? specializationsDataList = [];

  void getSpecializations() async {
    emit(HomeState.loading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        specializationsDataList =
            specializationsResponseModel.specializationDataList ?? [];
        getDoctors(specializationId: specializationsDataList?.first?.id??0);
        emit(
          HomeState.success(
            specializationsResponseModel.specializationDataList ?? [],
          ),
        );
      },
      failure: (error) => emit(HomeState.error(error)),
    );
  }

  void getDoctors({required int specializationId}) {
    List<Doctors?> doctorsList = filterDoctors(specializationId) ?? [];
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle("No Doctors Found")));
    }
  }

  filterDoctors(int specializationId) {
    return specializationsDataList
        ?.firstWhere((element) => element?.id == specializationId)
        ?.doctorsList;
  }
}
