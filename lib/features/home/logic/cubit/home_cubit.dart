import 'package:advanced_app/features/home/data/repos/home_repo.dart';
import 'package:advanced_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecializations() async {
    emit(HomeState.loading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: ( specializationsResponseModel) => emit(HomeState.success(specializationsResponseModel)),
      failure:
          (error) => emit(
            HomeState.error(error),
          ),
    );
  }
}
