import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:k_buss/utils/theme.dart';
import 'package:k_buss/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: BeamerDelegate(
        initializeFromParent: false,
        transitionDelegate: const NoAnimationTransitionDelegate(),
        locationBuilder: RoutesLocationBuilder(
          routes: {
            '*': (context, state, data) => HomeView(),
          },
        ),
      ),
    );
  }
}
