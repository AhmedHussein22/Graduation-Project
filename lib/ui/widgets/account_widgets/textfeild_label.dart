import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:raqeem/utils/colors.dart';
class TextFieldLabel extends StatelessWidget {
  final String title;
  final double screenHeight = ScreenUtil().screenHeight;
  final double screenWidth = ScreenUtil().screenWidth;
  TextFieldLabel(this.title);
  @override
  Widget build(BuildContext context) {
    ThemeData theme =Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.02),
      child: Text(title,style: theme.textTheme.bodyText1?.copyWith(
        color: BLUE_COLOR,
      )
      ),
    );
  }
}
