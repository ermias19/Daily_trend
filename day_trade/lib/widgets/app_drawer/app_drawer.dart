import 'package:day_trade/responsive/Screen_type.dart';
import 'package:day_trade/responsive/orietation_layout.dart';
import 'package:day_trade/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:day_trade/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:flutter/material.dart';
import 'package:day_trade/widgets/drwaer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: AppDrawerMobilePortrait(),
          landscape: AppDrawerMobileLandscape(),
        ),
        tablet: OrientationLayout(
          portrait: AppDrawerTabletPortrait(),
          landscape: AppDrawerTabletLandscape(),
        ));
  }

  static List<Widget> getDrawerOption() {
    return [
      DrawerOption(
        title: 'Images',
        icondata: Image.asset(
          'assets/menu/Today.png',
          width: 55,
        ),
      ),
      DrawerOption(
        title: 'Setting',
        icondata: Image.asset('assets/menu/Tab_Bar_Icons4.png'),
      ),
      DrawerOption(
        title: 'Setting',
        icondata: Image.asset('assets/menu/Tab_Bar_Icons3.png'),
      ),
      DrawerOption(
        title: 'Incidents',
        icondata: Image.asset('assets/menu/Tab_Bar_Icons2.png'),
      ),
      DrawerOption(
        title: 'Reports',
        icondata: Image.asset('assets/menu/Tab_Bar_Icons.png'),
      ),
    ];
  }
}
