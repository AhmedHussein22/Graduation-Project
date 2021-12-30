import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/create_account/gender.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';

// ignore: use_key_in_widget_constructors
class EditPersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل البيانات الشخصيه',
          style: theme.textTheme.headline1,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
          ),
        ),
        
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: Text(
                      'أكمل بياناتك لتكون جزء من الشبكه',
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: ScreenUtil().screenWidth * 0.08,
                        backgroundImage: AssetImage(
                          'assets/images/nad.png',
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: ScreenUtil().screenWidth * 0.03),
                      child: Text('صفحتك الشخصيه مكتمله بنسبة 75%'),
                    ),
                  ],
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().screenHeight * 0.01),
                  child: Column(
                    children: personalInformation,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().screenHeight * 0.01),
                  child: ClickButton(
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
                                "/TeacherHomeView",
                              ),
                              text: 'الرجوع للرئسية',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> personalInformation = [
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'الفيوم - حي الجامعه',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'مرحله ابتدائيه',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'مدرس اول',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'كلية تربية',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'امتياز',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: 'الفيوم',
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.01),
    child: CustomTextFormField(
      initialValue: '3 سنوات خبره',
    ),
  ),
  Gender(),
];
