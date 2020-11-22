import 'package:flutter/material.dart';
import 'package:food_mobile/utils/const/color_const.dart';
import 'package:food_mobile/utils/const/font_const.dart';
import 'package:food_mobile/utils/const/image_const.dart';
import 'package:food_mobile/views/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotoNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.PRIMARY_COLOR,
      body: Center(
        child: Image.asset(
          ImageConst.LAUNCH_ICON_WHITE,
          scale: 4,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void gotoNextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen()),
          (_) => false);
    });
  }
}
