import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tot/utils/colors.dart';




class Settigs extends StatefulWidget {
  @override
  _SettigsState createState() => _SettigsState();
}

class _SettigsState extends State<Settigs> {
  

 

  @override
  Widget build(BuildContext context) {
   
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الإعدادات",
          style: theme.textTheme.headline1,
        ),
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: OFF_WHITE_COLOR,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                   "اللغة",
                  style: theme.textTheme.headline1!.copyWith(
                    color: GREEN_COLOR
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:  WHITE_COLOR,
                border: Border(
                  bottom: BorderSide(width: .5),
                ),
              ),
              child: ListTile(
                title: Text(
                  'English',
                  style: theme.textTheme.subtitle1,
                ),
               
               
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:  GREEN_COLOR.withOpacity(0.1),
              ),
              child: ListTile(
                title: Text(
                  'عربى',
                  style: theme.textTheme.subtitle1,
                ),
                 trailing: Icon(
                        CupertinoIcons.checkmark_alt,
                        size: 25,
                        color: GREEN_COLOR,
                      ),
                
              ),
            ),
           
            Container(
              color: OFF_WHITE_COLOR,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                 "الدعم",
                   style: theme.textTheme.headline1!.copyWith(
                    color: GREEN_COLOR
                  ),
                ),
              ),
            ),
            customListTile(
              title: "عنا",
             
              context: context,
              theme: theme,
            ),
            customListTile(
              title: "اتصل بنا",
              
              context: context,
              theme: theme,
            ),
            customListTile(
              title: "الخصوصية",
              
              context: context,
              theme: theme,
            ),
            customListTile(
              title: "شروط الاستخدام",
              
              context: context,
              theme: theme,
            ),
          ],
        ),
      ),
    );
  }

  customListTile({theme, title, onTap, context}) {
    return Container(
      decoration: BoxDecoration(
        color: WHITE_COLOR,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
      ),
      child: ListTile(
          title: Text(
            title,
            style: theme.textTheme.subtitle1,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_left,
            size: 25,
          ),
          onTap: onTap),
    );
  }
}
