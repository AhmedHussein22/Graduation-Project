import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final double? width;
   final double? height;
  final String? hintText;
  final String?initialValue;
  final ValueChanged<String>? onChanged;
  final String?Function(String?)? validatorFun;
  final int? maxLines;
  final TextInputType? textInputType;
  final bool isSecure;
  final Color backgroundColor;
  final Color borderColor;
  final Widget? prefixIcon;

  // ignore: use_key_in_widget_constructors
  const CustomTextFormField(
      {this.textInputType,
      this.maxLines,
      this.width,
      this.height,
      this.hintText="",
      this.initialValue="",
      this.onChanged,
      this.validatorFun,
      this.isSecure=false,
      this.backgroundColor=WHITE_COLOR,
      this.borderColor=GRAY_COLOR,
      this.prefixIcon
      });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
   
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: width ?? ScreenUtil().screenWidth * 0.9,
      padding: EdgeInsets.symmetric( 
        horizontal: ScreenUtil().screenWidth * 0.05,
        vertical: ScreenUtil().screenHeight*0.005,
        ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color:borderColor )
      ),
      child: TextFormField(
        initialValue: initialValue,
        
        validator: validatorFun,
        obscureText: isSecure,
        keyboardType: textInputType ?? TextInputType.text,
        style: theme.textTheme.button?.copyWith(
          color: BLACK_COLOR

        ),
        cursorColor: DARK_GRAY_COLOR,
        textAlign: TextAlign.start,
        maxLines: maxLines ?? 1,
        onChanged: onChanged,
        decoration: InputDecoration(  
          prefixIcon: prefixIcon,
            
          hintText: hintText,
          hintStyle: theme.textTheme.bodyText2?.copyWith(
            color: GRAY_COLOR
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
