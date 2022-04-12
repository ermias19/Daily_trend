import 'package:flutter/material.dart';

class CardsContentMobilePortrait extends StatelessWidget {
  final Color? color;
  final Image? image;
  final Image? detail;
  final Image? playbutton;
  final Image? progressindicator;
  final Image? title;
  final Image? view;
  const CardsContentMobilePortrait(
      {Key? key,
      this.color,
      this.image,
      this.detail,
      this.playbutton,
      this.progressindicator,
      this.title,
      this.view})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    // var margin_ortiantation = MediaQuery.of(context).si;
    return Container(
        margin: orientation == Orientation.portrait
            ? const EdgeInsets.only(top: 20)
            : const EdgeInsets.only(top: 3),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: color!,
            blurRadius: 30.0,
            offset: const Offset(-1, -5),
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
                      SizedBox(
                          width:
                              orientation == Orientation.portrait ? 400 : 236,
                          child: image),
                      Positioned(
                          bottom: -35,
                          right: 38,
                          child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(50),
                              child: Container(child: playbutton))),
                    ],
                  ),
                  Row(children: [
                    Column(children: [
                      Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: title),
                      Container(
                        // color: Colors.black,
                        margin: const EdgeInsets.only(right: 10),
                        child: detail!,
                      )
                    ]),
                    Container(
                      // color: Colors.blue,
                      margin: const EdgeInsets.fromLTRB(80, 40, 20, 0),
                      child: Container(
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
    var orientation = MediaQuery.of(context).orientation;

    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          color: Colors.black,
          height: 350,
          child: Column(children: [
            Image.asset(
              'assets/card4_image/Verification_Animation1.png',
              height: orientation == Orientation.portrait ? 200 : 150,
            ),
            Image.asset('assets/card4_image/Titlemain.png'),
            InkWell(
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
            Image.asset('assets/card4_image/Title.png'),
          ]),
        ));
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
        height: orientation == Orientation.portrait ? 80 : 28,
        child: Image.asset('assets/card1_image/Header.png'));
  }
}
