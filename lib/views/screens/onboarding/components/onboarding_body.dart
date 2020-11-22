import 'package:flutter/material.dart';
import 'package:food_mobile/routes/routes.dart';
import 'package:food_mobile/utils/const/color_const.dart';
import 'package:food_mobile/utils/const/image_const.dart';
import 'package:food_mobile/views/screens/login/login_screen.dart';
import 'package:food_mobile/views/screens/onboarding/components/oboarding_content.dart';

class OnBoardingBody extends StatefulWidget {
  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      'image': ImageConst.ONBOARDING_ICON_1,
      'header': 'Discover places near you',
      'description':
          'We make it simple to find the food you crave. Enter your address and let us do the rest.'
    },
    {
      'image': ImageConst.ONBOARDING_ICON_2,
      'header': 'Choose A Tasty Dish',
      'description':
          'When you order Eat Street, we\'ll hook you up with exclusive coupons, specials and rewards.'
    },
    {
      'image': ImageConst.ONBOARDING_ICON_3,
      'header': 'Pick Up Your Delivery',
      'description':
          'We make food ordering fast, simple and free - no matter if you order online or cash.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: ColorConst.WHITE,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
              child: Ink(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    print('MJ leave onboarding');
                    Routing().navigateTo(context, LoginScreen());
                  },
                  child: Text(
                    'Skip >>',
                    style: TextStyle(color: ColorConst.PRIMARY_COLOR_20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: PageView.builder(
                  onPageChanged: (page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  itemCount: onBoardingData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                        imageUrl: onBoardingData[index]['image'],
                        header: onBoardingData[index]['header'],
                        description: onBoardingData[index]['description'],
                      )),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    onBoardingData.length, (index) => buildDot(index: index)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(microseconds: 200),
      margin: EdgeInsets.only(right: 4.0),
      height: 8.0,
      width: currentPage == index ? 28.0 : 16,
      decoration: BoxDecoration(
        color: currentPage == index
            ? ColorConst.PRIMARY_COLOR_20
            : ColorConst.GREY_50,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
