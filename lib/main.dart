import 'package:advanced_app/core/routing/app_router.dart';
import 'package:advanced_app/features/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}


class HomePage extends StatelessWidget {
  //test
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}