import 'package:advanced_app/core/di/dependancy_injection.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:advanced_app/features/auth/login/ui/login_screen.dart';
import 'package:advanced_app/features/auth/register/logic/cubit/signup_cubit.dart';
import 'package:advanced_app/features/auth/register/ui/signup_screen.dart';
import 'package:advanced_app/features/home/ui/home_screen.dart';
import 'package:advanced_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
