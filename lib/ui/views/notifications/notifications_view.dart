import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notification_item.dart';

class NotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الإشعارات",
          style: theme.headline1,
        ),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            // horizontal: ScreenUtil().screenWidth * 0.04,
            vertical: ScreenUtil().screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, right: 15),
                child: Text(
                  "الأحدث",
                  style: theme.headline1,
                ),
              ),
              ListView.builder(
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => NotificationItem(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, right: 15),
                child: Text(
                  "الأقدم",
                  style: theme.headline1,
                ),
              ),
              ListView.builder(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    NotificationItem(isNewNotification: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
