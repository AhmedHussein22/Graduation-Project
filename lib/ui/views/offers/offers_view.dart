import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tot/ui/widgets/shared_widgets/bottom_nav_bar.dart';

import 'offer_element.dart';

class OfferView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "عروض",
          style: theme.headline1,
        ),
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: Icon(
            CupertinoIcons.arrowshape_turn_up_right,
            ),
        ),
      ),
      body: OfferElement(),
      
      bottomNavigationBar: FABBottomAppBar(selectedIndex: 0),
    );
  }
}
