import 'package:advanced_app/core/di/dependancy_injection.dart';
import 'package:advanced_app/core/helper/constants.dart';
import 'package:advanced_app/core/helper/extentions.dart';
import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/routing/app_router.dart';
import 'package:advanced_app/features/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();

  setUpGetIt();
    await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  runApp(DocApp(appRouter: AppRouter()));
}
checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
