import 'package:flutter/material.dart';
import 'package:day_trade/widgets/cards_content/cards_content_mobile.dart';

import 'package:day_trade/widgets/cards_container/cards_container.dart';

class CardContainerMobile extends StatelessWidget {
  const CardContainerMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(children: [
          const HomeTitle(),
          Column(
            children: CardsContainer.getCardsContent(),
          ),
        ]));
  }
}

class CardContainerLandscape extends StatelessWidget {
  const CardContainerLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: CardsContainer.getCardsContent());
  }
}
