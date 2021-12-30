import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tot/ui/views/teacher/home/tap_lessons.dart';
import 'package:tot/ui/views/teacher/home/tap_offers.dart';
import 'package:tot/ui/views/teacher/home/tap_reviews.dart';
import 'package:tot/ui/widgets/shared_widgets/slider_with_indicator.dart';
import 'package:tot/ui/widgets/shared_widgets/svgImage.dart';
import 'package:tot/ui/widgets/shared_widgets/techer_bottom_nav_bar.dart';
import 'package:tot/utils/colors.dart';

// ignore: use_key_in_widget_constructors
class TeacherHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          leading: Badge(
            position: BadgePosition.topStart(top: 6, start: 8),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeColor: GREEN_COLOR,
            badgeContent: Center(
              child: Text(
                "8",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            child: IconButton(
                icon: Icon(Icons.notifications_none,
                    size: 35, color: Color(0xff808080)),
               onPressed:()=>Navigator.pushNamed(context, "/NotificationsView"),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 2, 2.0, 2.0),
              child: BuildImageSvg(
                  assetName: 'assets/images/logo.svg', h: 0.05, w: 0.15),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.07),
      ),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  height: ScreenUtil().screenHeight * 0.27,
                  child: SliderWithIndicator(),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: Image.asset("assets/images/nad.png"),
                  ),
                  title: Text(
                    "مرحبا بك نادر محمد",
                    style: theme.textTheme.headline1,
                  ),
                  subtitle: Text("مدرس علوم", style: TextTheme().subtitle1),
                  trailing: Text(
                    "إحصائياتك",
                    style: theme.textTheme.headline2,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                    border: Border(
                      bottom: BorderSide(color: GRAY_COLOR, width: 0.8),
                    ),
                  ),
                  child: TabBar(
                    indicatorColor: GREEN_COLOR,

                    unselectedLabelColor: GRAY_COLOR,
                    unselectedLabelStyle: theme.textTheme.headline1,
                    labelColor: BLACK_COLOR,

                    labelStyle: theme.textTheme.headline1,
                    // indicatorWeight: 4,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: BLACK_COLOR, width: 3.0),
                    ),

                    tabs: [
                      Tab(child: Text('الدروس')),
                      Tab(child: Text('العروض')),
                      Tab(child: Text('التقييمات'))
                    ],
                  ),
                ),
              ],
            ))
          ],
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  child: Container(
                child: Center(
                  child: TapLessons(),
                ),
              )),
              SingleChildScrollView(
                  child: Container(
                child: Center(
                  child: TapOffers(),
                ),
              )),
              SingleChildScrollView(
                  child: Container(
                child: Center(
                  child: TapReviews(),
                ),
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TeacherFABBottomAppBar(selectedIndex: 0),
    );
  }
}
