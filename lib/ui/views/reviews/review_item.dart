import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';
import 'package:tot/utils/colors.dart';

class ReviewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return ListView.builder(
            itemCount: DataBaseJson.rating.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: ScreenUtil().screenHeight * 0.1,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                ),
                child: CircleAvatar(
                  radius: ScreenUtil().screenHeight * 0.09 / 2,
                  backgroundImage: AssetImage(
                    DataBaseJson.rating[index]["image"],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            DataBaseJson.rating[index]["name"],
                            style: theme.button!.copyWith(
                              color: BLACK_COLOR
                            ),
                          ),
                          RatingBarIndicator(
                            rating: DataBaseJson.rating[index]["rating"],
                            unratedColor: LIGHT_GRAY_COLOR,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: ORANGE_COLOR,
                            ),
                            itemSize: 20,
                          ),
                          
                          
                        ],
                      ),
                      Text(
                        ' ايام${DataBaseJson.rating[index]["data"]} منذ',
                        style: theme.subtitle1,
                        textDirection: TextDirection.ltr,
                  
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  DataBaseJson.rating[index]["comment"],
                  style: theme.subtitle1,
                ),
              ],
            ),
          ],
        ),
        Divider(
          endIndent: 15,
          indent: 5,
          color: VERY_LIGHT_GRAY_COLOR.withOpacity(0.6),
        ),
      ],
    ));
  }
}
