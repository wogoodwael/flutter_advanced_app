import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_app/features/home/logic/cubit/home_state.dart';
import 'package:advanced_app/features/home/ui/widgets/all_doctors_list_view.dart';
import 'package:advanced_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_see_all.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecilizationsAndDoctor extends StatelessWidget {
  const SpecilizationsAndDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsError,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => setUpLoading(),
          success: (specializationsResponseModel) {
            var specializationsDataList =
                specializationsResponseModel.specializationDataList;
            return Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DoctorsSpecialitySeeAll(),

                    DoctorsSpecialityListView(
                      specializationsDataList: specializationsDataList,
                    ),
                    verticalSpace(10.h),

                    DoctorsSeeAll(),
                    verticalSpace(15.h),

                    AllDoctorsListView(
                      doctorsList: specializationsDataList?[0]?.doctorsList,
                    ),
                  ],
                ),
              ),
            );
          },
          error:
              (errorhandler) =>
                  Text(errorhandler.apiErrorModel.message ?? "Error"),
        );
      },
    );
  }
  Widget setUpLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
