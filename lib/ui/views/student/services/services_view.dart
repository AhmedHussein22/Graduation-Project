import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tot/ui/views/teacher/services/completed_service_view.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';

class ServicesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "طلبات تم الانتهاء منها",
          style: theme.headline1,
        ),
     
      ),
      body: SingleChildScrollView(
        child: Center(
          child: CompletedServiceView()
        ),
      ),
       bottomNavigationBar: FABBottomAppBar(selectedIndex: 3),
    );
  }
}
