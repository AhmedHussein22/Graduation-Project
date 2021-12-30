import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'login_view.dart';
import 'logo_with_title.dart';

// ignore: use_key_in_widget_constructors
class ReCreatePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    LogoWithTitle('كلمة سر جديده'),
                    SizedBox(
                      height: ScreenUtil().screenHeight * 0.1,
                    ),
                    CustomTextFormField(
                      hintText: 'كلمة السر',
                    ),
                    CustomTextFormField(
                      hintText: 'تأكيد كلمة السر',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: ClickButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessfulView(
                                subTitle: "تم تغيير كلمة السر بنجاح",
                                title: "تم تغيير",
                                button: ClickButton(
                                  text: 'تسجيل الدخول',
                                 
                                  
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginView()));
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        text: 'حفظ',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
