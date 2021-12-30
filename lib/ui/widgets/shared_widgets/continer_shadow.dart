import 'package:flutter/material.dart';
import 'package:raqeem/utils/colors.dart';

 final continerShadow = BoxDecoration(
        color: WHITE_COLOR,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: VERY_Light_GRAY_COLOR.withOpacity(1),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(1, 2), // changes position of shadow
          ),
        ],
      );
