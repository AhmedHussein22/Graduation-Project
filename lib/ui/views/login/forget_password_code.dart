import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/views/login/recreate_password.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

import 'logo_with_title.dart';

// ignore: use_key_in_widget_constructors
class ForgetPasswordCode extends StatelessWidget {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: WHITE_COLOR,
    borderRadius: BorderRadius.circular(6.0),
    border: Border.all(
      color: GRAY_COLOR,
    ),
  );
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: ScreenUtil().screenHeight * 0.06,
                          horizontal: ScreenUtil().screenWidth * 0.08,
                        ),
                        child: Text(
                          'من فضلك أدخل رمز التأكيدالذي تم ارساله الي رقم الهاتف',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headline2!
                              .copyWith(color: BLACK_COLOR),
                        ),
                      ),
                      Text('ادخل 6-أرقام', style: theme.textTheme.headline1),
                      SizedBox(height: 15),
                      /////// 6 numbers ////////
                      PinPut(
                        fieldsCount: 6,
                        textStyle: theme.textTheme.headline1,
                        eachFieldWidth: size.width * 0.12,
                        eachFieldHeight: size.width * 0.15,
                        focusNode: _pinPutFocusNode,
                        controller: _pinPutController,
                        submittedFieldDecoration: pinPutDecoration,
                        selectedFieldDecoration: pinPutDecoration,
                        followingFieldDecoration: pinPutDecoration,
                        pinAnimationType: PinAnimationType.fade,
                        onSubmit: (pin) {},
                      ),
                      SizedBox(
                        height: ScreenUtil().screenHeight * 0.1,
                      ),

                      ClickButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReCreatePassword()));
                        },
                        text: 'تأكيد',
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
        padding: EdgeInsets.only(
          bottom: ScreenUtil().screenHeight * 0.01,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('لديك حساب؟'),
            InkWell(
              child: Text('سجل الدخول',
                  style:
                      theme.textTheme.headline1?.copyWith(color: GREEN_COLOR)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
