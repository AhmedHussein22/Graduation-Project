import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/reviews/review_item.dart';
import 'package:tot/utils/colors.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth * 0.04,
        vertical: ScreenUtil().screenHeight * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'المراجعات',
              style: theme.headline1,
              children: <TextSpan>[
                TextSpan(
                  text: '  (6)',
                  style: theme.subtitle1,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "4.0",
            style: theme.headline1!.copyWith(fontSize: 22),
          ),
          SizedBox(height: 10),
          RatingBarIndicator(
            rating: 4,
            unratedColor: LIGHT_GRAY_COLOR,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: ORANGE_COLOR,
            ),
            itemSize: 30,
          ),
          SizedBox(height: 10),
          review("15", "5", 0.35, 0.1),
          review("9", "4", 0.25, 0.2),
          review("5", "3", 0.15, 0.3),
          review("3", "2", 0.08, 0.37),
          review("0", "1", 0.0, 0.45),
          SizedBox(height: 20),
           ReviewItem(),
          
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget review(String count, String starNum, double orange, double gray) {
    return Column(
      children: [
        Row(
          children: [
            Text("$starNum نجوم"),
            SizedBox(width: 8),
            Container(
              height: 8,
              width: ScreenUtil().screenWidth * orange,
              color: ORANGE_COLOR,
            ),
            Container(
              height: 8,
              width: ScreenUtil().screenWidth * gray,
              color: LIGHT_GRAY_COLOR,
            ),
            SizedBox(width: 8),
            Text("($count)"),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
