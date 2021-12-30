import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

class CardOffer extends StatelessWidget {
  final String? title;
  final String? buttonTitle;
  final Function? onPressed;

  const CardOffer({ this.title, this.buttonTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      // width: ScreenUtil().screenWidth * 0.5,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: BoxDecoration(
        color: DARK_GREEN_COLOR,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
           padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().screenWidth * 0.1,
            ),
            child: Text(
              title!,
              style: theme.headline1!.copyWith(color: WHITE_COLOR),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().screenWidth * 0.2,
            ),
            child: ClickButton(
              text: buttonTitle,
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }
}
