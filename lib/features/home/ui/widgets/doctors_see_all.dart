import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSeeAll extends StatelessWidget {
  const DoctorsSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Doctors", style: TextStyles.openSans18SemiBold),
        Spacer(),
        Text("see all ", style: TextStyles.font13GreyRegular),
      ],
    );
  }
}
