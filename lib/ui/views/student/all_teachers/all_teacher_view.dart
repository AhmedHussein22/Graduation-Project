import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tot/ui/views/student/all_teachers/teacher_item.dart';


class AllTeachersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "كل المدرسين",
          style: theme.headline1,
          
        ),
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
            ),
        ),
      ),
      body:  TeacherItem(),
      
      
    );
  }
}
