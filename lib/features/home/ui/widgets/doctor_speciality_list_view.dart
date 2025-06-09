
import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?>? specializationsDataList;
  DoctorsSpecialityListView({super.key,required this.specializationsDataList});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList?.length ?? 0,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(specializationsDataList: specializationsDataList, index: index,);
        },
      ),
    );
  }
}

