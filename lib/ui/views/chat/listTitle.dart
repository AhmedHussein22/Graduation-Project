import 'package:flutter/material.dart';
import 'package:tot/ui/views/chat/chatRoom.dart';
import 'package:tot/utils/colors.dart';

class ListTit extends StatelessWidget {
  final image,title,subtitle,trailing;
  final Color ?backgroundColor;

  ListTit({this.image,this.title,this.subtitle,this.trailing,this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,0.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatRoom()));
        },
        child: Container(
          color: backgroundColor,
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Image.asset(image),
            ),
            title: Text(title,
              style: theme.textTheme.headline1,
            ),
            subtitle: Text(subtitle,
                style: TextTheme().subtitle1),

            trailing: Text(trailing,
                style: TextStyle(
                    color: DARK_GRAY_COLOR,fontFamily: "Tajawal",
                    fontSize: 14
                )),
          ),
        ),
      ),
    );
  }
}
