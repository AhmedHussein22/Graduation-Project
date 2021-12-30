import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/reviews/review.dart';

import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';

class ReviewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المراجعات",
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
        child: Review(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth * 0.04,
          vertical: ScreenUtil().screenHeight * 0.02,
        ),
        child: ClickButton(
          onPressed: () =>Navigator.pushNamed(context, "/AddReviewView"),
          text: "إضافة تقييم",
        ),
      ),
    );
  }
}
