import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/utils/colors.dart';
class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
var _isMale = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        ////////////// ذكر /////////////////
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02 ),
          child: Container(
            width: ScreenUtil().screenWidth*.25,
            padding: EdgeInsets.all(ScreenUtil().screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(ScreenUtil().screenWidth * 0.01),
              color: _isMale ? BLACK_COLOR : WHITE_COLOR,
              border: Border.all(
                width: 1,
                color: BLACK_COLOR,
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isMale = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    _isMale?Icons.adjust:Icons.circle_outlined,
                    //size: ScreenUtil().screenHeight > 600 ? 27 : 17,
                    color: _isMale?WHITE_COLOR:BLACK_COLOR,
                  ),
                  Text(
                    'ذكر',
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: _isMale?WHITE_COLOR:BLACK_COLOR,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ///////// انثي/////////////////
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02 ),
          child: Container(
            width: ScreenUtil().screenWidth*.25,
            padding: EdgeInsets.all(ScreenUtil().screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(ScreenUtil().screenWidth * 0.01),
              color: _isMale ? WHITE_COLOR : BLACK_COLOR,
              border: Border.all(
                width: 1,
                color: BLACK_COLOR,
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isMale = false;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    _isMale?Icons.circle_outlined:Icons.adjust,
                    //size: ScreenUtil().screenHeight > 600 ? 27 : 17,
                    color: _isMale?BLACK_COLOR:WHITE_COLOR,
                  ),
                  Text(
                    'أنثي',
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: _isMale?BLACK_COLOR:WHITE_COLOR,
                    ),
                  ),
                ],
              ),

            ),
          ),
        ),
      ],
    );
  }
}
