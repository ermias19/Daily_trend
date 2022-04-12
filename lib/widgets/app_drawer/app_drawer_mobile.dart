import 'package:day_trade/widgets/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class AppDrawerMobilePortrait extends StatelessWidget {
  const AppDrawerMobilePortrait({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
        width: orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width
            : 300,
        decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [BoxShadow(blurRadius: 16, color: Colors.black12)]),
        child: Row(
          children: AppDrawer.getDrawerOption(),
        ));
  }
}

class AppDrawerMobileLandscape extends StatelessWidget {
  const AppDrawerMobileLandscape({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [BoxShadow(blurRadius: 16, color: Colors.black12)]),
        child: Center(
            child: Column(
          children: AppDrawer.getDrawerOption(),
        )));
  }
}
