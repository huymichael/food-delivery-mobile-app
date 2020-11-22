import 'package:flutter/material.dart';
import 'package:food_mobile/utils/const/font_const.dart';
import 'package:food_mobile/utils/const/image_const.dart';
import 'package:food_mobile/views/shared/spacer.dart';

class OnBoardingContent extends StatelessWidget {
  OnBoardingContent({this.header, this.description, this.imageUrl});

  final String header, description, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
          horizontal: 32.0),
      child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset(
            imageUrl,
            width: 140.0,
            height: 140.0,
          ),
          Spacer(flex: 2),
          Text(
            header,
            style: FontConst.PRIMARY_BOLD.copyWith(fontSize: 36.0),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 2),
          Text(
            description,
            style: FontConst.SECONDARY,
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
