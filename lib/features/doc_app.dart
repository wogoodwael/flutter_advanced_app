import 'package:advanced_app/core/helper/constants.dart';
import 'package:advanced_app/core/routing/app_router.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,

          primaryColor: ColorsManager.primary,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute:isLoggedInUser ? Routes.homeScreen : Routes.onBoarding,
      ),
    );
  }
}
