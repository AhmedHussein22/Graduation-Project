import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';

class TeacherItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return ListView.builder(
        itemCount: DataBaseJson.teachers.length,
        shrinkWrap: true,
        itemBuilder: (context, index) =>Column(
      children: [
        InkWell(
          onTap: ()=>Navigator.pushNamed(context, "/TeacherInDetailsView"),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.12,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                   top: 8,
                    right: 8,
                  ),
                  child: CircleAvatar(
                    radius: ScreenUtil().screenHeight * 0.1 / 2,
                    backgroundImage: AssetImage(
                      DataBaseJson.teachers[index]["image"],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DataBaseJson.teachers[index]["teachername"],
                    style: theme.headline1,
                  ),
                  Text(
                    DataBaseJson.teachers[index]["subject"],
                    style: theme.subtitle1,
                  ),
                  Text(
                    DataBaseJson.teachers[index]["level"],
                    style: theme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          endIndent: 15,
          indent: 5,
          height: 0,

        ),
      ],
      
    ));
  }
}
