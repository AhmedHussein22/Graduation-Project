import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tot/app/localisation/translator.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';


// ignore: use_key_in_widget_constructors
class OnBoardingView extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();
 final double sW =  ScreenUtil().screenWidth;
      

  final pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      //fontSize: ScreenUtil().setSp(20),
      fontSize: ScreenUtil().orientation == Orientation.portrait
      ? ScreenUtil().screenWidth * 0.055
      : ScreenUtil().screenHeight * 0.055,
      fontWeight: FontWeight.w700,
      color: BLACK_COLOR,
    ),
    bodyTextStyle: TextStyle(
      //fontSize: ScreenUtil().setSp(16),
      fontSize: ScreenUtil().orientation == Orientation.portrait
      ? ScreenUtil().screenWidth * 0.044
      : ScreenUtil().screenHeight* 0.044,
      fontWeight: FontWeight.w400,
      color: BLUE_COLOR
      ),
    descriptionPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: WHITE_COLOR,
    imagePadding: const EdgeInsets.only(top: 16,bottom:0),
  );

  Widget _buildImage(String assetName, context) {
    return Image.asset(
      'assets/images/$assetName',
     // width: MediaQuery.of(context).size.width,
    height: ScreenUtil().orientation == Orientation.portrait
      ? ScreenUtil().screenHeight * 0.3
      : ScreenUtil().screenHeight* 0.25,
      fit: BoxFit.cover,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      body: IntroductionScreen(
          key: introKey,
          showSkipButton: false,
          showNextButton: false,
          showDoneButton: false,
          color: WHITE_COLOR,
          globalFooter: Padding(
            padding: EdgeInsets.only(
              bottom: ScreenUtil().orientation==Orientation.portrait?
              ScreenUtil().screenHeight*0.1:
              ScreenUtil().screenHeight*0.02

            ),
            child: ClickButton(
              text: translator(context, "get_start"),
              borderRadius: 8,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/splashLogin");
              },
            ),
          ),
          dotsDecorator: const DotsDecorator(
            size:  Size.square(10),
            activeSize:  Size(12,12),
            activeColor: GREEN_COLOR,
            color: VERY_LIGHT_GRAY_COLOR,
            spacing:  EdgeInsets.symmetric(horizontal: 3.0),
           
          ),
          onDone: () {},
          pages: [
            PageViewModel(
              title: "The pioneer",
              body:
                  "The pioneer Virtual & real International Book Fair… Whatever  Place Can  join and participate…",
              image: _buildImage('intro1.png', context),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Virtual gallery",
              body:
                  "Virtual gallery of books with multi-level book shopping portal …",
              image: _buildImage('intro2.png', context),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Favorite Books",
              body: "Your favorite Books at your Fingertips",
              image: _buildImage('intro3.png', context),
              decoration: pageDecoration,
            ),
          ]),
    );
  }
}
