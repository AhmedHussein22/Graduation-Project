import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';

import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'package:tot/utils/colors.dart';

class AddReviewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "مراجعة المدرس",
          style: theme.headline1,
        ),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().screenWidth * 0.04,
            vertical: ScreenUtil().screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "ما رأيك؟",
                style: theme.headline1,
              ),
              SizedBox(height: 10),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 50,
                unratedColor: LIGHT_GRAY_COLOR,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 30,
                  color: ORANGE_COLOR,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                hintText: "أكتب مراجعتك",
                maxLines: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth * 0.04,
          vertical: ScreenUtil().screenHeight * 0.02,
        ),
        child: ClickButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessfulView(
                subTitle: "تم نشر مراجعتك للمدرس بنجاح",
                title: "تم الحفظ",
                button: ClickButton(
                   text: "العودة الي الرئيسية",
                   bgColor: DARK_GREEN_COLOR,
                   onPressed: () => Navigator.pushReplacementNamed(context, "/home")
                ),
              ),
            ),
          ),
          text: "نشر مراجعتك",
        ),
      ),
    );
  }
}
