import 'package:flutter/material.dart';

import 'package:day_trade/responsive/responsive_builder.dart';

class ScreenSizeProvider extends StatelessWidget {
  const ScreenSizeProvider({Key? key}) : super(key: key);
  @override
  build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Text(sizingInformation.toString());
    });
  }
}
