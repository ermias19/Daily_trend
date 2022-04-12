import 'package:flutter/material.dart';

class DrawerOptionTabletPortrait extends StatelessWidget {
  final String? title;
  final Image? icondata;
  const DrawerOptionTabletPortrait({Key? key, this.title, this.icondata})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 152,
        alignment: Alignment.center,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Container(child: icondata),
          Text(title!, style: const TextStyle(fontSize: 20)),
        ]));
  }
}

class DrawerOptionTabletLandscape extends StatelessWidget {
  final String? title;
  final Image? icondata;
  const DrawerOptionTabletLandscape({Key? key, this.title, this.icondata})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      margin: orientation == Orientation.portrait
          ? const EdgeInsets.only(left: 34)
          : const EdgeInsets.only(top: 100),
      child: icondata,
    );
  }
}
