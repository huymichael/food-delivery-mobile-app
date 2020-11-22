import 'package:flutter/material.dart';
import 'package:food_mobile/theme/app_theme.dart';
import 'package:food_mobile/views/screens/onboarding/onboarding_screen.dart';
import 'package:food_mobile/views/screens/splash/splash_screen.dart';

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FoodAppTheme.DEFAULT_THEME,
      home: OnBoardingScreen(),
    );
  }
}
