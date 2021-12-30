import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/techer_bottom_nav_bar.dart';
import 'package:tot/utils/colors.dart';

import 'edit_information_view.dart';

class PersonalInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('بيانات شخصية'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().screenWidth * 0.04,
            vertical:ScreenUtil().screenWidth * 0.02, 
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.1,
                child: ListTile(
                  leading: Container(
                    height: ScreenUtil().screenHeight * 0.15,
                    width: ScreenUtil().screenWidth * 0.15,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/nad.png',
                      ),
                      radius: ScreenUtil().screenHeight * 0.075,
                    ),
                  ),
                  title: Text(
                    'نادر محمد',
                    style: theme.textTheme.headline1
                        ,
                  ),
                  subtitle: Text('مدرس رياضيات'
                  ),
                  trailing: InkWell(
                    onTap: ()=>Navigator.pushNamed(context, "/SettingsView"),
                    child: Icon(
                      Icons.settings,
                      color: GREEN_COLOR,
                    ),
                  ),
                ),
              ),
              Divider(),
              Text(
                'نبذه عنك',
                style: theme.textTheme.headline1
                    ,
              ),
              SizedBox(
                height: ScreenUtil().screenHeight * 0.03,
              ),
              Text(
                'حاصل علي بكالوريوس من جامعة اوكسفورد ،خبره 5 سنوات في مجال ريادة الاعمال ،حاصل علي العديد من الجوائز القيمه.',
                style: theme.textTheme.subtitle1
                    ,
              ),
              SizedBox(
                height: ScreenUtil().screenHeight * 0.4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  ClickButton(
                    width: ScreenUtil().screenWidth * 0.5,
                    text: 'تعديل بياناتك الشخصية',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditInformationView()));
                    },
                   
                  ),
                  
                  ClickButton(
                    width: ScreenUtil().screenWidth * 0.35,
                    text: 'تسجيل الخروج',
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginView()));
                    },
                   
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TeacherFABBottomAppBar(selectedIndex: 4),
    );
  }
}
