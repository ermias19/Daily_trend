import 'package:day_trade/enums/device_screen.dart';
import 'package:flutter/material.dart';
import 'package:day_trade/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ScreenTypeLayout({Key? key, this.mobile, this.tablet, this.desktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizeInformation) {
      if (sizeInformation.deviceScreenType == DeviceScreenType.tablet) {
        if (tablet != null) {
          return tablet!;
        }
      }
      if (sizeInformation.deviceScreenType == DeviceScreenType.desktop) {
        if (tablet != null) {
          return desktop!;
        }
      }

      return mobile!;
    });
  }
}
