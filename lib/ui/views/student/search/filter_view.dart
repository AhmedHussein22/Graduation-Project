import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/utils/colors.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("حدد طريقة البحث", style: theme.headline1),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 15,
                color: OFF_WHITE_COLOR,
              ),
              _searchType(theme, true),
              Container(
                width: double.infinity,
                height: 15,
                color: OFF_WHITE_COLOR,
              ),
              _searchType(theme, false),
              Container(
                width: double.infinity,
                height: 15,
                color: OFF_WHITE_COLOR,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
       padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: ClickButton(
          text: "بحث",
          onPressed:  () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Widget _searchType(TextTheme theme, bool byLocation) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              byLocation ? "حسب المنطقة" : "حسب المادة الدراسية",
              style: theme.headline1,
            ),
          ),
        ),
        Divider(
          height: 0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    byLocation ? Icons.location_pin : Icons.book_outlined,
                    color: BLACK_COLOR,
                  ),
                  SizedBox(width: 10),
                  Text(
                    byLocation ? "الأماكن المتاحة" : "المادة",
                    style: theme.button!.copyWith(color: GREEN_COLOR),
                  ),
                ],
              ),
              Icon(Icons.chevron_right_rounded, color: LIGHT_GRAY_COLOR),
            ],
          ),
        ),
      ],
    );
  }
}
