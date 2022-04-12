import 'package:day_trade/widgets/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black,
      child: Row(children: AppDrawer.getDrawerOption()),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  const AppDrawerTabletLandscape({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: 150,
        decoration: const BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12,
          ),
        ]),
        child: Column(children: AppDrawer.getDrawerOption()));
  }
}
