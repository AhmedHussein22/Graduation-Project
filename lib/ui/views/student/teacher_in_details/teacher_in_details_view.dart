import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tot/ui/views/reviews/review.dart';

import 'package:tot/ui/widgets/shared_widgets/CustomTextFormField.dart';
import 'package:tot/ui/widgets/shared_widgets/click_botton.dart';
import 'package:tot/ui/widgets/shared_widgets/slider_with_indicator.dart';
import 'package:tot/ui/widgets/shared_widgets/successful_view.dart';
import 'package:tot/utils/colors.dart';

class TeacherInDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      //**************** appBar ***************** */
      appBar: AppBar(
        title: Text(
          "نادر محمد",
          style: theme.headline1,
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //**************** SliderWithIndicator ***************** */
            Container(
              height: ScreenUtil().screenHeight * 0.27,
              child: SliderWithIndicator(isVideo: true),
            ),
            //**************** info ***************** */
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.04,
                vertical: ScreenUtil().screenHeight * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "نادر محمد",
                    style: theme.headline1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: RichText(
                      text: TextSpan(
                        text: '100 ',
                        style: theme.headline1,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'جنية / ساعة',
                            style: theme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "مدرس علوم",
                    style: theme.subtitle1,
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: GRAY_COLOR.withOpacity(0.3),
                  ),
                  SizedBox(height: 10),
                  //**************** statistics ***************** */
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.clock, color: GREEN_COLOR),
                          SizedBox(width: 5),
                          Text("20 ساعة",
                              style: theme.button!
                                  .copyWith(color: DARK_GRAY_COLOR)),
                        ],
                      ),
                      SizedBox(width: ScreenUtil().screenWidth * 0.25),
                      Row(
                        children: [
                          Icon(Icons.speed_rounded, color: GREEN_COLOR),
                          SizedBox(width: 5),
                          Text("متاح الأن",
                              style: theme.button!
                                  .copyWith(color: DARK_GRAY_COLOR)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_outline_rounded,
                              color: GREEN_COLOR),
                          SizedBox(width: 5),
                          Text("10 حصص",
                              style: theme.button!
                                  .copyWith(color: DARK_GRAY_COLOR)),
                        ],
                      ),
                      SizedBox(width: ScreenUtil().screenWidth * 0.24),
                      Row(
                        children: [
                          Icon(Icons.celebration_rounded, color: GREEN_COLOR),
                          SizedBox(width: 5),
                          Text("كلية تربية",
                              style: theme.button!
                                  .copyWith(color: DARK_GRAY_COLOR)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: GRAY_COLOR.withOpacity(0.3),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.04,
              ),
              child: Text(
                "حصلت على بكالوريوس معهد الكونسرفتوار، خبرة 5 سنوات في  مادة الدراسات، حصلت على جوائز عديدة ولها شركات ناجحة في المملكة وخارجها",
                style: theme.subtitle1,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 15,
              color: GREEN_COLOR.withOpacity(0.05),
            ),
            SizedBox(height: 15),
            //**************** reviews ***************** */
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Review(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().screenWidth * 0.04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      ClickButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, "/AddReviewView"),
                        width: ScreenUtil().screenWidth * 0.4,
                        text: "إضافة تقييم",
                      ),
                      ClickButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, "/ReviewView"),
                        width: ScreenUtil().screenWidth * 0.4,
                        text: "عرض الكل ",
                        bgColor: WHITE_COLOR,
                        textColor: GREEN_COLOR,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().screenHeight * 0.04)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth * 0.04,
          vertical: ScreenUtil().screenHeight * 0.02,
        ),
        child: ClickButton(
            // onPressed: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SuccessfulView(
            //       text: "تم إرسال الطلب إلي المدرس بنجاح.. سوف يصلك اشعار بمجرد ان يقبل المدرس الطلب",
            //       button: ClickButton(
            //          text: "رؤية علي طلباتك",
            //          bgColor: DARK_GREEN_COLOR,
            //          onPressed: () => Navigator.pushReplacementNamed(context, "/home")
            //       ),
            //     ),
            //   ),
            // ),

            text: "إرسال طلب",
            onPressed: () => _modalBottomSheetMenu(context)),
      ),
    );
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: ScreenUtil().screenHeight * 0.6,
          color: Color(0xFF737373), //could change this to Color(0xFF737373),

          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().screenWidth * 0.04,
                  vertical: ScreenUtil().screenHeight * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                        color: GRAY_COLOR,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "إرسال طلب الي المدرس ناد محمد ",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "المادة",
                    ),
                    CustomTextFormField(
                      hintText: "العنوان",
                    ),
                    CustomTextFormField(
                      hintText: "التاريخ المتوقع للحصة",
                    ),
                    CustomTextFormField(
                      hintText: "عدد الساعات",
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().screenHeight * 0.02,
                      ),
                      child: ClickButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessfulView(
                                title: "تم الإرسال",
                                  subTitle:
                                      "تم إرسال الطلب إلي المدرس بنجاح.. سوف يصلك اشعار بمجرد ان يقبل المدرس الطلب",
                                  button: ClickButton(
                                      text: "رؤية طلباتك",
                                      bgColor: DARK_GREEN_COLOR,
                                      onPressed: () =>
                                          Navigator.pushReplacementNamed(
                                              context, "/service"))),
                            ),
                          );
                        },
                        text: "إرسال طلب",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
