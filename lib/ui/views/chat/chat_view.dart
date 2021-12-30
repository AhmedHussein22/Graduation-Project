import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/views/chat/listTitle.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';
import 'package:tot/ui/widgets/shared_widgets/techer_bottom_nav_bar.dart';
import 'package:tot/utils/colors.dart';

class ChatView extends StatefulWidget {
  final bool isStudent;

  const ChatView({ this.isStudent=false}) ;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
       appBar: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: ScreenUtil().screenWidth * 0.08),
              CustomTextFormField(
                hintText: "البحث في المراسلات",
                width: ScreenUtil().screenWidth * 0.8,
              ),
              
            ],
          ),
          preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.08),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,10.0,10.0,10.0),
                child: Container(
                    alignment: Alignment.centerRight,
                    child: Text("الرسائل    (2)",style: theme.textTheme.headline1,)),
              ),
              
              ListTit(image: "assets/images/nad.png",title: "نادر محمد",subtitle:" إيه الأخبار",trailing: "5 دقيقه",
                backgroundColor: Color(0xFFE8F8F7)),
              ListTit(image: "assets/images/person1.png",title: "نادر محمد",subtitle:"الشغل وصل؟",trailing: "15 دقيقه",
                backgroundColor: Color(0xFFE8F8F7)),
              ListTit(image: "assets/images/person2.png",title: "محمد",subtitle:"تمام",trailing: "25 دقيقه",
                backgroundColor: WHITE_COLOR),
              ListTit(image: "assets/images/person3.png",title: " Ahmed",subtitle:"سلام",trailing: "40 دقيقه",
                backgroundColor: WHITE_COLOR),
              ListTit(image: "assets/images/person4.png",title: "نادر محمد",subtitle:"بكرة",trailing: "50 دقيقه",
                backgroundColor: WHITE_COLOR),
    
    
            ],
          ),
        ),
      bottomNavigationBar:widget.isStudent?FABBottomAppBar(selectedIndex: 2): TeacherFABBottomAppBar(selectedIndex: 2),
      ),
    );
  }
}
