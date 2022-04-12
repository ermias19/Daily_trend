import 'package:day_trade/widgets/cards_container/cards_container.dart';
import 'package:flutter/material.dart';

class CardContainerTabletPortrait extends StatelessWidget {
  const CardContainerTabletPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: CardsContainer.getCardsContent());
  }
}

class CardContainerTabletLandscape extends StatelessWidget {
  const CardContainerTabletLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Row(children: CardsContainer.getCardsContent()));
  }
}
