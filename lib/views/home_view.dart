import 'package:day_trade/responsive/Screen_type.dart';
import 'package:day_trade/views/home_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:day_trade/responsive/orietation_layout.dart';
import 'package:day_trade/views/home_view_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTypeLayout(
            mobile: OrientationLayout(
              portrait: HomeMobilePortrait(),
              landscape: const HomeMobileLandscape(),
            ),
            tablet: const OrientationLayout(
                portrait: HometViewTablet(),
                landscape: HometViewTabletLandscape())));
  }
}
