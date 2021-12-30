import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/create_account/gender.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'package:tot/utils/colors.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                leading: CircleAvatar(
                  radius: ScreenUtil().screenHeight * 0.08 / 2,
                  child: Image.asset("assets/images/person1.png"),
                ),
                title: Text(
                  "نادر محمد",
                  style: theme.headline1,
                ),
                subtitle: Text(
                  "مرحلة الإعدادية",
                  style: theme.subtitle1,
                ),
                trailing: InkWell(
                  onTap: () =>Navigator.pushNamed(context, "/SettingsView"),
                  child: Icon(
                    Icons.settings,
                    color: GREEN_COLOR,
                  ),
                ),
              ),
            ),
            leading: Container(),
            leadingWidth: 0,
          ),
          preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.08),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().screenHeight * 0.03,
                horizontal: ScreenUtil().screenWidth * 0.04,
              ),
              child: Column(
                children: [
                  SizedBox(height: ScreenUtil().screenHeight * 0.05),
                  CustomTextFormField(
                    initialValue: "نادر محمد",
                    hintText: "الاسم بالكامل",
                    borderColor: BLACK_COLOR,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.03),
                    child: CustomTextFormField(
                      initialValue: "مرحلة الإعدادية",
                      borderColor: BLACK_COLOR,
                      hintText: "المرحلة التعليمية",
                    ),
                  ),
                  CustomTextFormField(
                    initialValue: "الجيزة - 6 اكتوبر- الحصري",
                    hintText: "العنوان",
                    borderColor: BLACK_COLOR,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.03),
                    child: Gender(),
                  ),
                  ClickButton(
                    text: "حفظ التغييرات",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessfulView(
                            title: "تم الحفظ",
                            subTitle:
                                "تم إكمال بياناتك، أصبحت جزء من الشبكة المجانية بنجاح",
                            button: ClickButton(
                              onPressed: () => Navigator.pushReplacementNamed(
                                context,
                                "/home",
                              ),
                              text: 'الرجوع للرئسية',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: ScreenUtil().screenHeight * 0.1),
                  ClickButton(
                    width: ScreenUtil().screenWidth * 0.35,
                    text: "تسجيل خروج",
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/login"),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(selectedIndex: 4),
      ),
    );
  }
}
