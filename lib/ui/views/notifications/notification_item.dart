import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/utils/colors.dart';

class NotificationItem extends StatelessWidget {
  final bool isNewNotification;

  const NotificationItem({this.isNewNotification = true});
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          color: isNewNotification ? GREEN_COLOR.withOpacity(0.1) : WHITE_COLOR,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                height: ScreenUtil().screenHeight * 0.1,
                child: CircleAvatar(
                  radius: ScreenUtil().screenHeight * 0.08 / 2,
                  backgroundColor: VERY_LIGHT_GRAY_COLOR,
                  backgroundImage: AssetImage(
                    isNewNotification
                        ? "assets/icons/old_notification.png"
                        : "assets/icons/new_notification.png",
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "لديك رساله لم يتم الرد عليه من الاستاذ نادر",
                      style: theme.headline2!.copyWith(color: BLACK_COLOR),
                    ),
                    Text(
                      isNewNotification ? "30 دقيقة" : "3 أيام",
                      style: theme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: isNewNotification ? WHITE_COLOR : OFF_WHITE_COLOR,
          height: 0,
        ),
      ],
    );
  }
}
