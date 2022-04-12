import 'package:flutter/material.dart';

class DrawerOpitonMobilePortrait extends StatelessWidget {
  final String? title;
  final Image? iconData;
  const DrawerOpitonMobilePortrait({Key? key, this.title, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      margin: orientation == Orientation.portrait
          ? const EdgeInsets.only(left: 34)
          : const EdgeInsets.only(top: 34),
      child: iconData,
    );
  }
}
