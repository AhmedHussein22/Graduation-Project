import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/spacer.dart';
import 'package:tot/utils/colors.dart';

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              leading: CircleAvatar(
                radius: ScreenUtil().screenHeight * 0.08 / 2,
                child: Image.asset("assets/images/person1.png"),
              ),
              title: Text(
                "نادر محمد",
                style: theme.textTheme.headline1,
              ),
              trailing: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  CupertinoIcons.arrowshape_turn_up_right,
                ),
              ),
            ),
          ),
          leading: Container(),
          leadingWidth: 1,
        ),
        preferredSize: Size.fromHeight(ScreenUtil().screenHeight * 0.08),
      ),
      body: SingleChildScrollView(
        child: Conversation(),
      ),
      bottomNavigationBar: buildChatComposer(),
    );
  }
}

class buildChatComposer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          color: Colors.white,
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey[500],
                      ),
                      WSpacer(10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'ارسل الرساله ...',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey[600],
                      )
                    ],
                  ),
                ),
              ),
              WSpacer(16),
              CircleAvatar(
                backgroundColor: GREEN_COLOR,
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Conversation extends StatelessWidget {
  List messages = [
    "اعتقدت أن هذه ستكون طريقة رائعة للتفاعل مع الواجهة.",
    "أنا موافق! إنه بالتأكيد ينتج تجربة مستخدم أفضل.",
    "هل حصلت على المذكره الرائعة التي أرسلتها؟",
    "نعم رائعة!",
    "رائع!",
    "شكرا جزيلا لك",
    "عفوا"
  ];
  List isMe = [false, true, false, true, false, true, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: messages.length,
        itemBuilder: (context, int index) {
          bool isme = isMe[index];
          return Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:
                        isme ? MainAxisAlignment.end : MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (!isme)
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/nad.png"),
                        ),
                      WSpacer(10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.6),
                          decoration: BoxDecoration(
                              color: isme ? GREEN_COLOR : Color(0xffE6F7F7),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(isme ? 12 : 0),
                                bottomRight: Radius.circular(isme ? 0 : 12),
                              )),
                          child: Text(
                            messages[index],
                            style: TextStyle(
                                color: isme ? Colors.white : Colors.grey[800]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15),
                  child: Row(
                    mainAxisAlignment:
                        isme ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (!isme) WSpacer(40),
                      Icon(
                        Icons.done_all,
                        size: 20,
                      ),
                      WSpacer(8),
                      Text(
                        "10.00 PM",
                      )
                    ],
                  ),
                ),
                index == 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ScreenUtil().screenWidth * 0.43,
                            height: 0.5,
                            color: Color(0xffB6B9C3),
                          ),
                          Text(
                            "اليوم",
                            style: TextStyle(color: Color(0xffB6B9C3)),
                          ),
                          Container(
                            width: ScreenUtil().screenWidth * 0.43,
                            height: 0.5,
                            color: Color(0xffB6B9C3),
                          ),
                        ],
                      )
                    : Container()
              ],
            ),
          );
        });
  }
}
