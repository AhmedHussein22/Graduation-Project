import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SuccessfulView extends StatelessWidget {
  final Widget? button;
  final String subTitle;
  final String title;

  SuccessfulView({this.button, this.title = "", this.subTitle = ""});
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.2,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenUtil().screenHeight * 0.3,
                  ),
                  SvgPicture.asset(
                    "assets/icons/done.svg",
                    height: ScreenUtil().screenHeight * 0.15,
                    width: ScreenUtil().screenWidth * 0.15,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: theme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subTitle,
                    style: theme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.07,
              ),
                    child: button??Container(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
     
    );
  }
}
