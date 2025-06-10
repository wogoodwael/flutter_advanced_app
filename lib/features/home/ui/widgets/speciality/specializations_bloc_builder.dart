import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_app/features/home/logic/cubit/home_state.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_see_all.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors/doctors_shimmer_loading.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:advanced_app/features/home/ui/widgets/speciality/speciality_list_view.dart';
import 'package:advanced_app/features/home/ui/widgets/speciality/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecilizationsBlocBuilder extends StatelessWidget {
  const SpecilizationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SizedBox.shrink(),
          loading: () => setUpLoading(),
          success: (specializationsResponseModel) {
            var specializationsDataList = specializationsResponseModel;
            return Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DoctorsSpecialitySeeAll(),

                    SpecialityListView(
                      specializationsDataList: specializationsDataList,
                    ),
                    verticalSpace(10.h),

                    DoctorsSeeAll(),
                  ],
                ),
              ),
            );
          },
          error:
              (errorhandler) =>
                  Text(errorhandler.message??"Error"),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setUpLoading() {
    return Expanded(
      child: Column(
        children: [
          SpecialityShimmerLoading(),
          verticalSpace(10),
          DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
