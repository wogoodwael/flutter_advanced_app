import 'package:advanced_app/features/home/data/models/specialisation_response_model.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors/doctor_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllDoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const AllDoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return DoctorsListViewItem(doctorModel: doctorsList?[index]);
        },
      ),
    );
  }
}

