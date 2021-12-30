import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/spacer.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'package:tot/ui/widgets/shared_widgets/svgImage.dart';
import 'package:tot/ui/widgets/shared_widgets/techer_bottom_nav_bar.dart';

class AddOfferView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("اضافة العرض", style: theme.textTheme.headline1),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HSpacer(10),
            CircleAvatar(
              radius: ScreenUtil().screenHeight * 0.07,
              backgroundColor: Color(0xffF3F3F3),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuildImageSvg(
                      assetName: "assets/icons/camera.svg",
                      w: 0.2,
                      h: 0.02,
                    ),
                    HSpacer(10),
                    Text("إضافة لوجو",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff505050))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomTextFormField(
                hintText: 'اسم العرض',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomTextFormField(
                hintText: 'سعر الساعة',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomTextFormField(
                hintText: 'عدد الساعات',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CustomTextFormField(
                hintText: 'تاريخ انتهاء العرض',
              ),
            ),
            HSpacer(10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ClickButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessfulView(
                        title: "تم الإرسال",
                        subTitle: "تم إضافة العرض بنجاح",
                        button: ClickButton(
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, "/TeacherHomeView"),
                          text: 'الرجوع للرئسية',
                        ),
                      ),
                    ),
                  );
                },
                text: 'نشر العرض',
               
               
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TeacherFABBottomAppBar(selectedIndex: 1),
    );
  }
}

class SentSuccesfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/succesfully.png"),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                "تم الإرسال",
                style: theme.textTheme.headline1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
              child: Text("تم إضافة العرض بنجاح",
                  style: theme.textTheme.bodyText2),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: ClickButton(
                onPressed: () {},
                text: 'الرجوع للرئسية',
                borderRadius: ScreenUtil().screenWidth * 0.02,
                width: ScreenUtil().screenWidth * 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
