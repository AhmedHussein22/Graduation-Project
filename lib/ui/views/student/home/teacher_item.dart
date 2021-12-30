import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';

class TeacherItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>InkWell(
      onTap: ()=>Navigator.pushNamed(context, "/TeacherInDetailsView"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: ScreenUtil().screenHeight * 0.12,
            child: Padding(
              padding:  EdgeInsets.only(
                bottom: 5,
                left: 15,
                right:15,
              ),
              child: CircleAvatar(
                radius: ScreenUtil().screenHeight * 0.12/2,
                
                backgroundImage: AssetImage(
                  DataBaseJson.teachers[index]["image"],
    
                ),
              )
             
            ),
          ),
          SizedBox(height: 5,),
          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DataBaseJson.teachers[index]["teachername"],
                    style:theme.headline1 ,
                    ),
                    Text(DataBaseJson.teachers[index]["subject"],
                    style:theme.subtitle1 ,
                    ),
                    Text(DataBaseJson.teachers[index]["level"],
                    style:theme.subtitle1 ,
                    ),
                  ],
                ),
        ],
      ),
    ));
  }
}
