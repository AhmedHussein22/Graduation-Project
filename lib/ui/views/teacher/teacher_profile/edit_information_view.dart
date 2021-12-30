import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/slider_with_indicator.dart';
import 'package:tot/utils/colors.dart';

import 'edit_personal_information.dart';

// ignore: use_key_in_widget_constructors
class EditInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل معلومات عنك',
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
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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

                          /*child: SvgPicture.asset(
                            'assets/images/logo.svg',
                          ),*/
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: ScreenUtil().screenWidth * 0.03),
                        child: Text('صفحتك الشخصيه مكتمله بنسبة 75%'),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: ScreenUtil().screenWidth * 0.15,
                      backgroundColor: VERY_LIGHT_GRAY_COLOR,
                      child: Icon(
                        Icons.add_a_photo,
                        color: GRAY_COLOR,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: Text(
                      'اضافة صورتك الشخصيه',
                      style: theme.textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().screenHeight * 0.03,
                  ),
                  Container(
                    height: ScreenUtil().screenHeight * 0.27,
                    child: SliderWithIndicator(isVideo: true),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: Text(
                      'اضافة فيديو قصير  للشرح المبسط',
                      style: theme.textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().screenHeight * 0.03,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: CustomTextFormField(
                      initialValue: 'نادر محمد',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: CustomTextFormField(
                      initialValue: 'مدرس علوم',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: CustomTextFormField(
                      initialValue:
                          'حاصل علي بكالوريوس من جامعة اوكسفورد ،خبره 5 سنوات في مجال ريادة الاعمال ،حاصل علي العديد من الجوائز القيمه.',
                      maxLines: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.01),
                    child: ClickButton(
                      text: 'التالي',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EditPersonalInformation()));
                      },
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
