import 'package:flutter/material.dart';
import 'package:tot/ui/views/student/home/card_offer.dart';
import 'package:tot/ui/widgets/shared_widgets/spacer.dart';
import 'package:tot/utils/colors.dart';

class TapLessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,15.0,0.0,10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/icons/hours.png"),
                  HSpacer(8),
                  Text("عدد الساعات",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BLACK_COLOR)),
                  Text("20 ساعة",style: TextStyle(fontSize: 15,color: LIGHT_BLACK_COLOR)),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/person.png"),
                  HSpacer(8),
                  Text("عدد الطلاب",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BLACK_COLOR)),
                  Text("١٠ طلاب",style: TextStyle(fontSize: 15,color: LIGHT_BLACK_COLOR)),
                ],
              ),
            ],
          ),
          HSpacer(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/icons/timer.png"),
                  HSpacer(8),
                  Text("معانا منذ",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BLACK_COLOR)),
                  Text("60 يوم",style: TextStyle(fontSize: 15,color: LIGHT_BLACK_COLOR)),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/jps.png"),
                  HSpacer(8),
                  Text("الامكان",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BLACK_COLOR)
                  ),
                  Text("5 اماكن",style: TextStyle(fontSize: 15,color: LIGHT_BLACK_COLOR)),
                ],
              ),
            ],
          ),
          HSpacer(20),
           CardOffer(
              title: "اكمل حسابك الشخصي وكن من للمميزين علي المنصة",
              buttonTitle: "اكمل الان",
              onPressed: () {
                 Navigator.pushReplacementNamed(context, "/PersonalInformationView");
              },
            ),
            CardOffer(
              title: "اطلع الان علي الطلبات التي حصلت عليها",
              buttonTitle: "أذهب الي الطلبات",
              onPressed: () {
                // Navigator.pushReplacementNamed(context, "/service");
              },
            ),
        ],
      ),
    );
  }
}