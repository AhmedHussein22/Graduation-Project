import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tot/utils/colors.dart';

class FABBottomAppBarItem {
  String? icon;
  String? text;
  FABBottomAppBarItem({this.text, this.icon});
}

class TeacherFABBottomAppBar extends StatefulWidget {
  final int selectedIndex;
  const TeacherFABBottomAppBar({required this.selectedIndex});
  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<TeacherFABBottomAppBar> {
  List<FABBottomAppBarItem> allItems(context) {
    return [
      FABBottomAppBarItem(
        icon: "assets/icons/home.svg",
        text: "الرئيسية",
      ),
      FABBottomAppBarItem(
        icon: "assets/icons/offers.svg",
        text: "عرض",
      ),
      FABBottomAppBarItem(
        icon: "assets/icons/chat.svg",
        text: "مراسلة",
      ),
      FABBottomAppBarItem(
        icon: "assets/icons/service.svg",
        text: "خدمة",
      ),
      FABBottomAppBarItem(
        icon: "assets/icons/account.svg",
        text: "الحساب",
      ),
    ];
  }

  int _selectedIndex = 0;
  setSelectedIndex() {
    setState(() {
      _selectedIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    setSelectedIndex();
  }

  _updateIndex(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });

      print("on tap selected:$index");

      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, "/TeacherHomeView");
          break;
        case 1:
          Navigator.pushReplacementNamed(context, "/AddOffer");
          break;
        case 2:
          Navigator.pushReplacementNamed(context, "/chat");
          break;
        case 3:
          Navigator.pushReplacementNamed(context, "/TeacherServicesView");
          break;
        case 4:
          Navigator.pushReplacementNamed(context, "/PersonalInformationView");
          break;
        default:
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(allItems(context).length, (int index) {
      return _buildTabItem(
        item: allItems(context)[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return BottomAppBar(
      // shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      color: WHITE_COLOR,
    );
  }

  Widget _buildTabItem({
    FABBottomAppBarItem? item,
    int? index,
    ValueChanged<int>? onPressed,
  }) {
    Color? color = _selectedIndex == index ? GREEN_COLOR : Black_GRAY_COLOR;
    return Expanded(
      child: InkWell(
         onTap: () => onPressed!(index!),
        child: Container(
          decoration: BoxDecoration(
              color: WHITE_COLOR,
              border: Border(
                top: BorderSide(
                  color: VERY_LIGHT_GRAY_COLOR.withOpacity(0.4),
                  width: 2,
                ),
              )),
          height: ScreenUtil().screenHeight * 0.1,
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                   // alignment: Alignment.,
                    height: ScreenUtil().screenHeight * 0.08,
                    margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().screenWidth * 0.01),
                    decoration: BoxDecoration(
                      color: _selectedIndex == index ? GREEN_COLOR.withOpacity(0.2) : WHITE_COLOR,
                      borderRadius: BorderRadius.all(
                       Radius.circular(ScreenUtil().screenWidth * 0.02)
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        item!.icon!,
                        height: ScreenUtil().screenHeight * 0.03,
                        width: ScreenUtil().screenWidth * 0.03,
                        color: color,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height:5),
                      Text(
                        item.text!,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: color,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
