import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/login/forget_password_code.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

import 'login_view.dart';
import 'logo_with_title.dart';

// ignore: use_key_in_widget_constructors
class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      LogoWithTitle('نسيت كلمة السر'),
                      SizedBox(height: ScreenUtil().screenHeight * 0.08,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil().screenHeight * 0.03,
                            horizontal: ScreenUtil().screenWidth * 0.08
                            ),
                            
                        child: Text(
                          'من فضلك أدخل رقم الهاتف للحصول علي رمز التأكيد',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headline1,
                              
                        ),
                      ),
                      CustomTextFormField(
                        hintText: 'رقم الهاتف',
                      ),
                      SizedBox(height: ScreenUtil().screenHeight * 0.08,),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ClickButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgetPasswordCode()));
                          },
                          text: 'ارسل رمز التأكيد',
                         
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: ScreenUtil().screenHeight*0.01,),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('لديك حساب؟'),
          InkWell(
            child: Text('سجل الدخول',
                style: theme.textTheme.headline1?.copyWith(color: GREEN_COLOR)),
            onTap: () {
               Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoginView()));
            },
          ),
        ],
      ),),
    );
  }
}
