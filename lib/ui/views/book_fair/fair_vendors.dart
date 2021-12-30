import 'package:flutter/material.dart';
import 'package:raqeem/ui/widgets/vendor_widgets/vendor_item.dart';

class FairVendors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
     itemCount: 5,
       itemBuilder: (ctx, index) => VendorItem(
         onPressed: ()=> Navigator.pushNamed(context,"/VendorsDetailsView"),
           imagePath: 'assets/images/booktest.png',
           booksNumber: 2000,
           views: 351,
           vendorName: 'Mohamed Backry'),
        );
  }
}
