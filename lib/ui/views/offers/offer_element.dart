import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';
import 'package:tot/utils/colors.dart';

class OfferElement extends StatelessWidget {
  final bool isTeacher;

  const OfferElement({this.isTeacher = false});
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return  ListView.builder(
        itemCount:isTeacher?3: DataBaseJson.offers.length,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
     InkWell(
      onTap: () => isTeacher
          ? null
          : Navigator.pushNamed(context, "/TeacherInDetailsView"),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                  left: 10,
                  right: 10,
                ),
                child: Stack(
                  children: [
                    Image.asset(
                       DataBaseJson.offers[index]["image"],
                      height: ScreenUtil().screenHeight * 0.25,
                      width: ScreenUtil().screenWidth,
                      fit: BoxFit.cover,
                    ),
                    isTeacher ? Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                        decoration: BoxDecoration(
                          color: GREEN_COLOR,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("حذف",
                        style: theme.button!.copyWith(color: WHITE_COLOR),
                        textAlign: TextAlign.center,
                        ),
                      ),
                    ) : Container()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 25,
                left: 15,
                right: 15,
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
                         
                        style: theme.button!.copyWith(
                          color: BLACK_COLOR
                        ),
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
