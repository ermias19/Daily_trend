import 'package:day_trade/responsive/Screen_type.dart';
import 'package:flutter/material.dart';
import 'package:day_trade/responsive/orietation_layout.dart';
import 'package:day_trade/widgets/cards_container/card_container_mobile.dart';
import 'package:day_trade/widgets/cards_container/card_container_tablet.dart';
import 'package:day_trade/widgets/cards_content/cards_content.dart';

class CardsContainer extends StatelessWidget {
  const CardsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: CardContainerMobile(),
        landscape: CardContainerLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: CardContainerTabletPortrait(),
        landscape: CardContainerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getCardsContent() {
    return [
      CardsContent(
        color: const Color.fromARGB(255, 53, 53, 7),
        image: Image.asset('assets/card1_image/Image.png'),
        detail: Image.asset('assets/card1_image/Details.png', width: 120),
        playbutton: Image.asset(
          'assets/card1_image/Play_Button.png',
          width: 80,
        ),
        progressindicator: Image.asset(
          'assets/card1_image/Progress_Indicator.png',
          width: 330,
        ),
        title: Image.asset(
          'assets/card1_image/Title.png',
          width: 150,
        ),
        view: Image.asset('assets/card1_image/View_Progress.png'),
      ),
      CardsContent(
        color: const Color.fromARGB(255, 24, 24, 5),
        image: Image.asset('assets/card2_image/Image.png'),
        detail: Image.asset('assets/card2_image/Details.png', width: 120),
        playbutton: Image.asset(
          'assets/card2_image/Play_Button.png',
          width: 80,
        ),
        progressindicator: Image.asset(
          'assets/card2_image/Progress_Indicator.png',
          width: 330,
        ),
        title: Image.asset(
          'assets/card2_image/Title.png',
          width: 150,
        ),
        view: Image.asset('assets/card2_image/View_Progress.png'),
      ),
      CardsContent(
        color: const Color.fromARGB(255, 36, 13, 12),
        image: Image.asset('assets/card3_image/Image.png'),
        detail: Image.asset('assets/card3_image/Details.png', width: 120),
        playbutton: Image.asset(
          'assets/card3_image/Play_Button.png',
          width: 80,
        ),
        progressindicator: Image.asset(
          'assets/card3_image/Progress_Indicator.png',
          width: 330,
        ),
        title: Image.asset(
          'assets/card3_image/Title.png',
          width: 150,
        ),
        view: Image.asset('assets/card3_image/View_Progress.png'),
      ),
    ];
  }
}
