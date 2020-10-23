import 'package:flutter/material.dart';
import 'package:food_mobile/utils/const/font_const.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('begin here',style: FontConst.SECONDARY_LIGHT,),
      ),
    );
  }
}
