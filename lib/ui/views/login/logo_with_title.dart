import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class LogoWithTitle extends StatelessWidget {
  final String title;
  const LogoWithTitle(this.title);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.018),
            child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    // width: MediaQuery.of(context).size.width,
                    height: ScreenUtil().orientation == Orientation.portrait
                        ? ScreenUtil().screenHeight * 0.17
                        : ScreenUtil().screenHeight * 0.25,
                    fit: BoxFit.cover,
                  ),
          ),
                Text(title,
                    style: theme.textTheme.headline1),
        ],
      ),
      
    );
  }
}