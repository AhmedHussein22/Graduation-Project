import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';
import 'package:tot/utils/colors.dart';

class OfferItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () => Navigator.pushNamed(context, "/TeacherInDetailsView"),
        child: Container(
          height: ScreenUtil().screenHeight * 0.2,
          width: ScreenUtil().screenWidth * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 5,
                    left: 10,
                    right: 5,
                  ),
                  child: Image.asset(
                    DataBaseJson.offers[index]["image"],
                    height: ScreenUtil().screenHeight * 0.2,
                    width: ScreenUtil().screenWidth * 0.8,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DataBaseJson.offers[index]["offname"],
                          style: theme.button!.copyWith(color: BLACK_COLOR),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          DataBaseJson.offers[index]["teachername"],
                          style: theme.subtitle1,
                        ),
                        Text(
                          "حتي ${DataBaseJson.offers[index]["data"]}",
                          style: theme.subtitle1,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                        "${DataBaseJson.offers[index]["hours"]} ساعات",
                        style: theme.subtitle1,
                      ),
                      Text(
                        "${DataBaseJson.offers[index]["prices"]} جنية/ساعة",
                        style: theme.subtitle1,
                      ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
