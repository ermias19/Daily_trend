import 'package:day_trade/responsive/Screen_type.dart';
import 'package:flutter/material.dart';
import 'package:day_trade/responsive/orietation_layout.dart';
import 'package:day_trade/widgets/cards_content/cards_content_mobile.dart';
import 'package:day_trade/widgets/cards_content/cards_content_tablet.dart';

class CardsContent extends StatelessWidget {
  // final double? Width;
  final Color? color;
  final Image image;
  final Image? detail;
  final Image? playbutton;
  final Image? progressindicator;
  final Image? title;
  final Image? view;
  const CardsContent(
      {Key? key,
      this.color,
      required this.image,
      this.detail,
      this.playbutton,
      this.progressindicator,
      this.title,
      this.view})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CardsContentMobilePortrait(
          color: color,
          image: image,
          detail: detail,
          playbutton: playbutton,
          progressindicator: progressindicator,
          title: title,
          view: view),
      tablet: OrientationLayout(
          portrait: CardsContentTabletPortrait(
              color: color,
              image: image,
              detail: detail,
              playbutton: playbutton,
              progressindicator: progressindicator,
              title: title,
              view: view)),
    );
  }
}
