import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/utils/colors.dart';

import 'gender.dart';

// ignore: use_key_in_widget_constructors
class TeacherInformation extends StatefulWidget {
  @override
  _TeacherInformationState createState() => _TeacherInformationState();
}

class _TeacherInformationState extends State<TeacherInformation> {
  Widget dropDown(String _selectedValue, List<String> _items, context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().screenWidth * 0.03,
        vertical: 5,
      ),
      alignment: Alignment.centerLeft,
      // width: ScreenUtil().screenWidth * 0.9,
      height: ScreenUtil().screenHeight * 0.075,
      decoration: BoxDecoration(
        color: WHITE_COLOR,
        //borderRadius: BorderRadius.circular(3),
        border: Border.all(color: GRAY_COLOR),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          style: Theme.of(context).textTheme.bodyText1,
          value: _selectedValue,
          onChanged: (newValue) {
            print(newValue);
            setState(() {
              _selectedValue = newValue.toString();
              //_selectedMood = newValue;
            });
          },
          icon: Icon(
            Icons.expand_more,
          ),
          isExpanded: true,
          items: _items.map((level) {
            return DropdownMenuItem(
              child: Container(
                child: Text(
                  level,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              value: level,
            );
          }).toList(),
        ),
      ),
    );
  }

  List<String> _educationLevel = [
    'رياض أطفال',
    'مرحلة ابتدائية',
    'مرحلة اعدادية',
    'مرحله ثانوية'
  ];
  String _selectedLevel = 'مرحلة اعدادية';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CustomTextFormField(
                        hintText: 'الاسم بالكامل',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CustomTextFormField(
                        hintText: 'العنوان',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: dropDown(_selectedLevel, _educationLevel, context),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CustomTextFormField(
                        hintText: 'كلمة السر',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: CustomTextFormField(
                        hintText: 'تأكيد كلمة السر',
                      ),
                    ),
                    SizedBox(height: 10),
                    Gender(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
