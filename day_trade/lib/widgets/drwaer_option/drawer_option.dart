import 'package:day_trade/responsive/Screen_type.dart';
import 'package:day_trade/responsive/orietation_layout.dart';
import 'package:flutter/material.dart';

import 'package:day_trade/widgets/drwaer_option/drawer_option_mobile.dart';
import 'package:day_trade/widgets/drwaer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String? title;
  final Image? icondata;
  const DrawerOption({Key? key, this.title, this.icondata}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait:
              DrawerOpitonMobilePortrait(title: title, iconData: icondata),
        ),
        tablet: OrientationLayout(
          portrait: DrawerOptionTabletPortrait(
            title: title,
            icondata: icondata,
          ),
          landscape: DrawerOptionTabletLandscape(
            icondata: icondata,
          ),
        ));
  }
}
