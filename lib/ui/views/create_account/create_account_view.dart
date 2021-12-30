import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/create_account/teacher_info.dart';
import 'package:tot/ui/views/create_account/student_info.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/views/login/logo_with_title.dart';
import 'package:tot/ui/views/student/home/home_view.dart';
import 'package:tot/ui/views/teacher/home/teacher_homeView.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

// ignore: use_key_in_widget_constructors
class CreateAccountView extends StatefulWidget {
  @override
  _CreateAccountViewState createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    print(_selectedIndex);
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(
        title: Text('test'),
      ),*/
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: NestedScrollView(
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().screenHeight * 0.04),
                  child: LogoWithTitle('انشاء حساب'),
                ),

                TabBar(
                  indicatorColor: GREEN_COLOR,
                  labelColor: BLACK_COLOR,
                  unselectedLabelColor: DARK_GRAY_COLOR,
                  labelStyle: theme.textTheme.headline1,
                  unselectedLabelStyle: theme.textTheme.headline1,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (int index){
                    setState(() {
                      _selectedIndex=index;
                    });
                    

                  },
                  tabs: [
                    Tab(child: Text('مدرس')),
                    Tab(child: Text('طالب')),
                  ],
                ),
              ],
            ))
          ],
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  child: Container(
                child: Center(
                  child: StudentInformation(),
                ),
              )),
              SingleChildScrollView(
                  child: Container(
                child: Center(
                  child: TeacherInformation(),
                ),
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth * 0.03,
          vertical: ScreenUtil().screenHeight * 0.01,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ClickButton(
                onPressed: () {
                  if (_selectedIndex==0) {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TeacherHomeView()));
                                
                  } 
                  if (_selectedIndex==1) {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeView()));
                                
                  } 
                },
                text: 'انشاء حساب جديد',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'بانشاءك حساب جديد، انت توافق علي شروط الاستخدام وسياسة الخصوصيه',
                overflow: TextOverflow.clip,
                textAlign: TextAlign.right,
                style: theme.textTheme.bodyText1?.copyWith(color: GREEN_COLOR),
              ),
            ),
            Text(
              'لديك حساب؟',
              style: theme.textTheme.subtitle1?.copyWith(color: BLACK_COLOR),
            ),
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
