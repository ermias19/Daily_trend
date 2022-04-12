import 'package:flutter/material.dart';

class CardsContentTabletPortrait extends StatelessWidget {
  final Color? color;
  final Image? image;
  final Image? detail;
  final Image? playbutton;
  final Image? progressindicator;
  final Image? title;
  final Image? view;
  const CardsContentTabletPortrait(
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
    var orientation = MediaQuery.of(context).size.width;
    return Container(
        height: 600,
        width: 500,
        margin: const EdgeInsets.fromLTRB(20, 23, 0, 0),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: color!,
            blurRadius: 30.0,
            offset: const Offset(-1, -40),
          )
        ]),
        child: Column(children: [
          Card(
              color: const Color.fromARGB(255, 54, 54, 54),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                          width:
                              // ignore: unrelated_type_equality_checks
                              orientation == Orientation.portrait ? 500 : 500,
                          child: image),
                      Positioned(
                          bottom: 20,
                          right: 100,
                          child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(50),
                              child: Container(child: playbutton))),
                    ],
                  ),
                  Row(children: [
                    Column(children: [
                      Container(
                          width: 200,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: title),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 200,
                        child: detail!,
                      )
                    ]),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 0, 20, 0),
                      child: Container(
                        width: 100,
                        alignment: Alignment.bottomRight,
                        child: view!,
                      ),
                    )
                  ]),
                  SizedBox(height: 40, child: progressindicator)
                ],
              ))
        ]));
  }
}

class CardContentLast extends StatelessWidget {
  const CardContentLast({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Card(
          child: Container(
        color: Colors.black,
        width: 500,
        child: Column(children: [
          Container(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/card4_image/Verification_Animation1.png',
                height: 200,
              )),
          Image.asset('assets/card4_image/Titlemain.png'),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: InkWell(
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Stack(children: [
                      Image.asset(
                        'assets/card4_image/Large_Btn.png',
                        width: 250,
                      ),
                      Positioned(
                          top: 10,
                          left: 50,
                          child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/card4_image/fire.png',
                                width: 25,
                                height: 25,
                              ))),
                    ]))),
          ),
          Image.asset('assets/card4_image/Title.png'),
        ]),
      )),
    );
  }
}

class HomeTitle extends StatelessWidget {
  final Image? header;
  const HomeTitle({Key? key, this.header}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
        margin: orientation == Orientation.portrait
            ? const EdgeInsets.only(left: 20)
            : const EdgeInsets.only(left: 70),
        height: orientation == Orientation.portrait ? 100 : 10,
        child: Image.asset('assets/card1_image/Header.png'));
  }
}
