import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/core/models/data_base_json.dart';
import 'package:tot/ui/views/chat/chatRoom.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'package:tot/utils/colors.dart';

class UnCompletedServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil().screenHeight * 0.04,
        ),
        ListView.builder(
          itemCount: DataBaseJson.uncompletService.length,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      child: Text(
                        DataBaseJson.uncompletService[index]["title"],
                        style: theme.headline2!.copyWith(
                            color: BLACK_COLOR,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "${ DataBaseJson.uncompletService[index]["hours"]} ساعات \n ${ DataBaseJson.uncompletService[index]["data"]}",
                      style: theme.subtitle1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().screenWidth * 0.02,
                    vertical: ScreenUtil().screenHeight * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClickButton(
                      text: "قبول الطلب وبدأ المحادثة",
                      width: ScreenUtil().screenWidth * 0.55,
                      height: ScreenUtil().screenHeight * 0.06,
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatRoom())),
                    ),
                    ClickButton(
                      text: "رفض الطلب",
                      width: ScreenUtil().screenWidth * 0.35,
                      height: ScreenUtil().screenHeight * 0.06,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessfulView(
                              title: "تم الرفض",
                              subTitle: "تم رفض طلب الطالب احمد خالد",
                              button: ClickButton(
                                onPressed: () => Navigator.pushReplacementNamed(
                                  context,
                                  "/TeacherServicesView",
                                ),
                                text: 'الرجوع للطلبات',
                              ),
                            ),
                          ),
                        );
                      },
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
