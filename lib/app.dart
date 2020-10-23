import 'package:flutter/material.dart';
import 'package:food_mobile/theme/app_theme.dart';
import 'package:food_mobile/utils/const/views/screens/splash/splash_screen.dart';

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FoodAppTheme.DEFAULT_THEME,
      home: SplashScreen(),
    );
  }
}
