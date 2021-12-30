import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SharedText extends StatelessWidget {
  final String title;
  SharedText({required this.title});
  @override
  Widget build(BuildContext context) {
    ThemeData theme=Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenUtil().screenHeight*0.004,top: ScreenUtil().screenHeight*0.022,),
      child: Text(title,style: theme.textTheme.bodyText1?.copyWith(
        fontWeight: FontWeight.w400,
      )),
    );
  }
}
