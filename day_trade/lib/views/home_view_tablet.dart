import 'package:day_trade/widgets/app_drawer/app_drawer.dart';
import 'package:day_trade/widgets/cards_container/cards_container.dart';
import 'package:flutter/material.dart';

import '../widgets/cards_content/cards_content_tablet.dart';

class HometViewTablet extends StatelessWidget {
  const HometViewTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // ignore: avoid_unnecessary_containers
              return Container(
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(children: [
                const HomeTitle(),
                const CardsContainer(),
                const CardContentLast(),
                const AppDrawer(),
              ]));
            }));
  }
}

class HometViewTabletLandscape extends StatelessWidget {
  const HometViewTabletLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Column(children: [
              // ignore: sized_box_for_whitespace
              Container(height: 100, child: const HomeTitle()),

              Expanded(
                  child: ListView(
                      shrinkWrap: true,

                      // scrollDirection: Axis.horizontal,
                      scrollDirection: Axis.horizontal,
                      children: [
                    const AppDrawer(),
                    Container(
                        color: Colors.black, child: const CardsContainer()),
                    Container(
                        height: 150,
                        color: Colors.black,
                        padding: const EdgeInsets.fromLTRB(0, 70, 0, 100),
                        // padding: EdgeInsets.all(30),
                        child: const CardContentLast()),
                  ]))
            ])));
  }
}
