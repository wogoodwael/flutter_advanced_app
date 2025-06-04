import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: ExactAssetImage("assets/images/circleuser.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi , welcome back ", style: TextStyles.font14GrayRegular),
            Text("John Doe William", style: TextStyles.openSans18SemiBold),
          ],
        ),
        Spacer(),
        SvgPicture.asset("assets/svgs/notification.svg"),
      ],
    );
  }
}
