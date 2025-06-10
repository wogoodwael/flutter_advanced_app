import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/features/home/ui/widgets/doctor_green_container.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors/doctors_bloc_builder.dart';
import 'package:advanced_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:advanced_app/features/home/ui/widgets/speciality/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              verticalSpace(10),
              DoctorGreenContainer(),
              verticalSpace(30.h),

              SpecilizationsBlocBuilder(),
              DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

