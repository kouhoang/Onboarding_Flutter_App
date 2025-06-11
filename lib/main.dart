import 'package:flutter/material.dart';
import 'package:onboarding_login_register_app_ui/onboarding_main_creen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Inter'),
      home: OnboardingMainScreen(),
    );
  }
}
