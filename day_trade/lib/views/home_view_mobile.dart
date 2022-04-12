import 'package:flutter/material.dart';

import 'package:day_trade/widgets/app_drawer/app_drawer.dart';
import 'package:day_trade/widgets/cards_container/cards_container.dart';
import 'package:day_trade/widgets/cards_content/cards_content_mobile.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CardsContainer(),
                  const CardContentLast(),
                  const AppDrawer()
                ]);
          }),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Column(children: [
              const HomeTitle(),
              Expanded(
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                    const AppDrawer(),
                    Container(
                        color: Colors.black, child: const CardsContainer()),
                    Container(
                        color: Colors.black,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 14),
                        child: const CardContentLast()),
                  ]))
            ])));
  }
}
