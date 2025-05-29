import 'package:advanced_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/logo_back.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, .4],
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
            ),
          ),
          child: Image.asset("assets/images/doc_image.png"),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor Appointment App",
            style: TextStyles.font32BlueBold,
          ),
        ),
      ],
    );
  }
}
