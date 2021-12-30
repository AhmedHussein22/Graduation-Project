import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/login/logo_with_title.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

class SearchByLevelView extends StatefulWidget {
  @override
  _SearchByLevelViewState createState() => _SearchByLevelViewState();
}

class _SearchByLevelViewState extends State<SearchByLevelView> {
  bool level0 = false, level1 = false, level2 = false, level3 = false;
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().screenWidth * 0.06,
              vertical: ScreenUtil().screenHeight * 0.08,
            ),
            child: Column(
              children: [
                LogoWithTitle('المدرس بين ايدك'),
                SizedBox(
                  height: ScreenUtil().screenHeight * 0.1,
                ),
                _item(theme, "رياض أطفال", level0, () {
                  setState(() {
                    level0 = !level0;
                  });
                }),
                _item(
                  theme,
                  "مرحلة إبتدائية",
                  level1,
                  () {
                    setState(() {
                      level1 = !level1;
                    });
                  },
                ),
                _item(theme, "مرحلة إعدادية", level2, () {
                  setState(() {
                    level2 = !level2;
                  });
                }),
                _item(theme, "مرحلة ثانوية", level3, () {
                  setState(() {
                    level3 = !level3;
                  });
                }),
                 SizedBox(
                  height: ScreenUtil().screenHeight * 0.1,
                ),
                ClickButton(
                  text: "بحث",
                  onPressed: ()=>Navigator.pushNamed(context, "/SearchResultesView"),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(selectedIndex: 1),
    );
  }

  Widget _item(theme, String title, bool value, void Function() onChanged) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            InkWell(
              onTap: onChanged,
              child: Container(
                height: 28,
                width: 28,
                decoration:
                    BoxDecoration(border: Border.all(color: GREEN_COLOR)),
                child: value
                    ? Icon(
                        Icons.check_rounded,
                        color: DARK_GREEN_COLOR,
                        size: 24,
                      )
                    : null,
              ),
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: theme.headline1,
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
