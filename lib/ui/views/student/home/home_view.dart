import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tot/ui/views/student/home/card_offer.dart';
import 'package:tot/ui/views/student/home/teacher_item.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';
import 'package:tot/ui/widgets/shared_widgets/slider_with_indicator.dart';

import 'offer_item.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextFormField(
                hintText: "البحث عن مدرس ,مادة ,مكان ....",
                width: ScreenUtil().screenWidth * 0.7,
              ),
              InkWell(
                onTap:()=>Navigator.pushNamed(context, "/NotificationsView"),
                child: SvgPicture.asset(
                  "assets/icons/notification.svg",
                  height: ScreenUtil().screenHeight * 0.04,
                  width: ScreenUtil().screenWidth * 0.04,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.08),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.27,
                child: SliderWithIndicator(),
              ),
              title(
                "عروض",
                () {
                  Navigator.pushNamed(context, "/Offers");
                },
                theme,
              ),
              Container(
                height: ScreenUtil().screenHeight * 0.33,
                child: OfferItem(),
                
              ),
              title(
                "أشهر المدرسين",
                () {
                  Navigator.pushNamed(context, "/AllTeachers");
                },
                theme,
              ),
              Container(
                height: ScreenUtil().screenHeight * 0.25,
                child:  TeacherItem(),
                              ),
              title(
                "أحدث المدرسين",
                () {
                  Navigator.pushNamed(context, "/AllTeachers");
                },
                theme,
              ),
              Container(
                height: ScreenUtil().screenHeight * 0.25,
                child: TeacherItem(),
                ),
              
              CardOffer(
                title: "اطلب مدرس في تخصصك وحصل علي جميع المدرسين واحدث العروض",
                buttonTitle: "أطلب الأن",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/search");
                },
              ),
              CardOffer(
                title: "اطلع الان علي الطلبات التي حصلت عليها",
                buttonTitle: "أذهب الي الطلبات",
                onPressed: () {
                   Navigator.pushReplacementNamed(context, "/service");
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(selectedIndex: 0),
      ),
    );
  }

  Widget title(String title, void Function() onPressed, theme) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth * 0.03,
        vertical: ScreenUtil().screenHeight * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.headline1,
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              "عرض الكل",
              style: theme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
