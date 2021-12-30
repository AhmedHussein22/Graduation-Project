import 'package:flutter/material.dart';
import 'package:tot/ui/views/offers/offer_element.dart';
import 'package:tot/ui/views/student/home/card_offer.dart';


class TapOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CardOffer(
          title: "اضف عرض جديد واحصل علي المزيد من الطلاب والمزي من المال ",
          buttonTitle: "إصافة عرض",
          onPressed: () {
             Navigator.pushReplacementNamed(context, "/AddOffer");
          },
        ),
         OfferElement(isTeacher: true),
        
      ],
    );
  }
}
