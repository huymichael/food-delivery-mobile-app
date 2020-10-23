import 'package:flutter/material.dart';
import 'package:food_mobile/utils/const/color_const.dart';
import 'package:food_mobile/utils/const/font_const.dart';

class FoodAppTheme {
  static final _defaultTextTheme = TextTheme(
      headline1: FontConst.PRIMARY_LIGHT.copyWith(fontSize: 96.0),
      headline2: FontConst.PRIMARY_LIGHT.copyWith(fontSize: 60.0),
      headline3: FontConst.PRIMARY.copyWith(fontSize: 48.0),
      headline4: FontConst.PRIMARY.copyWith(fontSize: 34.0),
      headline5: FontConst.PRIMARY.copyWith(fontSize: 24.0),
      headline6: FontConst.PRIMARY.copyWith(fontSize: 20.0),
      subtitle1: FontConst.PRIMARY.copyWith(fontSize: 16.0),
      subtitle2: FontConst.PRIMARY_MEDIUM.copyWith(fontSize: 14.0),
      bodyText1: FontConst.SECONDARY_MEDIUM.copyWith(fontSize: 14.0),
      bodyText2: FontConst.SECONDARY.copyWith(fontSize: 14.0),
      button: FontConst.PRIMARY_MEDIUM.copyWith(fontSize: 14.0)
  );

  static final DEFAULT_THEME = ThemeData(
    textTheme: _defaultTextTheme,
    primaryColor: ColorConst.PRIMARY_COLOR,
    scaffoldBackgroundColor: ColorConst.GREY_30
  );
}
