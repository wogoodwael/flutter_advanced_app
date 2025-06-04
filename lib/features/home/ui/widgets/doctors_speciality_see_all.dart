import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctors Speciality", style: TextStyles.openSans18SemiBold),
        Spacer(),
        Text("see all ", style: TextStyles.font13GreyRegular),
      ],
    );
  }
}
