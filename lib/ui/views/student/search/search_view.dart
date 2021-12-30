import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/login/logo_with_title.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';
import 'package:tot/utils/colors.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().screenWidth * 0.03,
              vertical: ScreenUtil().screenHeight * 0.08,
            ),
            child: Column(
              children: [
                LogoWithTitle('المدرس بين ايدك'),
                SizedBox(
                  height: ScreenUtil().screenHeight * 0.1,
                ),
                _searchType(theme, "بحث بأسم مدرس", () =>Navigator.pushNamed(context, "/SearchByTeacherView"),),
                SizedBox(height: ScreenUtil().screenHeight * 0.05),
                _searchType(theme, "بحث بأسم الماده", () =>Navigator.pushNamed(context, "/SearchByMaterialView"),),
                SizedBox(height: ScreenUtil().screenHeight * 0.05),
                _searchType(
                  theme,
                  "بحث حسب مرحلة دراسية",
                  () =>Navigator.pushNamed(context, "/SearchByLevelView"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(selectedIndex: 1),
    );
  }

  Widget _searchType(TextTheme theme, String title, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: GREEN_COLOR,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.headline1!.copyWith(color: WHITE_COLOR),
            ),
            Icon(CupertinoIcons.right_chevron, color: WHITE_COLOR)
          ],
        ),
      ),
    );
  }
}
