import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildImageSvg extends StatelessWidget {
  final assetName,w,h;
  BuildImageSvg({this.assetName,this.w,this.h});
  @override
  Widget build(BuildContext context) {
      return SvgPicture.asset(assetName,
        width: ScreenUtil().screenWidth * w,
        height: ScreenUtil().screenHeight * h,
        // fit: BoxFit.,
      );
  }
}
