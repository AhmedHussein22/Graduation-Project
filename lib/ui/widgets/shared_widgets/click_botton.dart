import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/utils/colors.dart';

class ClickButton extends StatelessWidget {
  final String? text;
  final dynamic onPressed;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? textColor;
  final double? borderRadius;
  final Color borderColor;

  const ClickButton(
      {this.textColor = WHITE_COLOR,
      this.borderColor=GREEN_COLOR,
      this.text,
      this.onPressed,
      this.width,
      this.height,
      this.bgColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ??
            (ScreenUtil().screenWidth < 600
                ? ScreenUtil().screenHeight * 0.07
                : ScreenUtil().screenHeight * 0.09),
        width: width ?? ScreenUtil().screenWidth * 0.9,
        decoration: BoxDecoration(
          color: bgColor ?? GREEN_COLOR,
          border: Border.all(color: borderColor , ),
          borderRadius: BorderRadius.circular(
            borderRadius ?? ScreenUtil().screenWidth * 0.01,
          ),
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: theme.textTheme.button!.copyWith(color:textColor),
          ),
        ),
      ),
    );
  }
}
