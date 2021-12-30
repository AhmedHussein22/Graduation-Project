import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:tot/ui/views/create_account/create_account_view.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/views/login/logo_with_title.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

// ignore: use_key_in_widget_constructors
class VerificationCodeView extends StatelessWidget {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: WHITE_COLOR,
    borderRadius: BorderRadius.circular(6.0),
    border: Border.all(
      color: DARK_GRAY_COLOR,
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
                      LogoWithTitle('انشاء حساب'),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                             ScreenUtil().screenWidth * 0.1,
                             ScreenUtil().screenHeight * 0.05,
                              ScreenUtil().screenWidth * 0.1,
                              ScreenUtil().screenHeight * 0.08,

                             ),
                        child: Text(
                          'من فضلك أدخل رمز التأكيدالذي تم ارساله الي رقم الهاتف',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headline1
                              ,
                        ),
                      ),
                      Text(
                        'ادخل 6-أرقام',
                        style: theme.textTheme.headline1,
                      ),
                      /////// 6 numbers ////////
                      SizedBox(height: 20),
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

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight * 0.07),
                        child: ClickButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccountView()));
                          },
                          text: 'تأكيد',
                         
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
