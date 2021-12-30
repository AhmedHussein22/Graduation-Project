import 'package:flutter/cupertino.dart';
import 'package:raqeem/core/enums/device_type.dart';

class DeviceInfo {
  final Orientation? orientation;
  final DeviceType? deviceType;
  final double? screenWidth;
  final double? screenHeight;
  final double? localWidth;
  final double? localHeight;
  final double? horizontalPadding;
  final double? verticalPadding;

  DeviceInfo(
      {this.orientation,
      this.deviceType,
      this.screenWidth,
      this.screenHeight,
      this.localWidth,
      this.localHeight,
      this.horizontalPadding,
      this.verticalPadding,
      });
}
