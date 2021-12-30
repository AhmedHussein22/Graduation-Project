import 'package:flutter/material.dart';
import 'package:tot/ui/views/teacher/services/completed_service_view.dart';
import 'package:tot/ui/widgets/shared_widgets/techer_bottom_nav_bar.dart';
import 'package:tot/utils/colors.dart';
import 'uncompleted_services_view.dart';

// ignore: use_key_in_widget_constructors
class TeacherServicesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    //var size = MediaQuery.of(context).size;
    return  DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: GREEN_COLOR,
            unselectedLabelColor: BLACK_COLOR,
            unselectedLabelStyle: theme.textTheme.headline1,
            labelColor: BLACK_COLOR,
            labelStyle: theme.textTheme.headline1,
            // indicatorWeight: 4,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: 10),
              borderSide: BorderSide(color: GREEN_COLOR, width: 3.0),
            ),
            tabs: [
              Tab(child: Text('طلبات تمت')),
              Tab(child: Text('طلبات لم تنتهي')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: CompletedServiceView(),
            ),
            SingleChildScrollView(
              child: UnCompletedServiceView(),
            ),
          ],
        ),
        bottomNavigationBar: TeacherFABBottomAppBar(selectedIndex: 3),
      ),
    );
  }
}
