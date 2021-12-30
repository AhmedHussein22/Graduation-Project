import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/create_account/mobileNumber_view.dart';
import 'package:tot/ui/views/login/forget_password.dart';
import 'package:tot/ui/views/student/home/home_view.dart';
import 'package:tot/ui/views/teacher/home/teacher_homeView.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

import 'logo_with_title.dart';

// ignore: use_key_in_widget_constructors
class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _phone ="";
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    LogoWithTitle('تسجيل الدخول'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CustomTextFormField(
                        hintText: 'رقم الهاتف',
                        onChanged: (value){
                          setState(() {
                            _phone=value;
                          });
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CustomTextFormField(
                        hintText: 'كلمة السر',
                        isSecure: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ClickButton(
                        onPressed: () {
                          if (_phone=="01114484229") {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeView()));
                          }
                          if (_phone=="01094984097") {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TeacherHomeView()));
                          }
                        },
                        text: 'سجل الدخول',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Text(
                            'نسيت كلمة السر؟',
                            style: TextStyle(color: GREEN_COLOR),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: ScreenUtil().screenHeight * 0.05,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('لاتمتلك حساب؟'),
            InkWell(
              child: Text('سجل حساب جديد',
                  style:
                      theme.textTheme.headline1?.copyWith(color: GREEN_COLOR)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileNumberView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
