import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';

class CompletedServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil().screenHeight * 0.04,
        ),
        ListView.builder(
          itemCount: DataBaseJson.completService.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/images/Image1.png",
                          height: 60,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DataBaseJson.completService[index]["title"],
                            style: theme.headline1,
                          ),
                           SizedBox(height: 10),
                          Text(
                            "تاريخ الانتهاء: ${DataBaseJson.completService[index]["data"]}",
                            style: theme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider()
            ],
          ),
        )
      ],
    );
  }
}
