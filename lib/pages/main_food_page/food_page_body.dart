import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/font/big_text.dart';
import 'package:food_delivery/font/small_text.dart';
import 'package:food_delivery/widget/app_column.dart';
import 'package:food_delivery/widget/icon_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class foodpagebody extends StatefulWidget {
  const foodpagebody({super.key});

  @override
  State<foodpagebody> createState() => _foodpagebodyState();
}

class _foodpagebodyState extends State<foodpagebody> {
  PageController pageController = PageController(viewportFraction: 0.9);

  double _scalefactor = 0.8;
  var _currentpage = 0.0;

  double _height = 220;
  @override
  //always use init state do not write void myself and write only init  and use it accordingly
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentpage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          //color: Colors.grey.shade400,
          height: ht * 0.4,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _foodpageitem(position);
              }),
        ),
        DotsIndicator(
            dotsCount: 5,
            position: _currentpage,
            decorator: DotsDecorator(
              color: Colors.black87, // Inactive color
              activeColor: Colors.amber.shade700,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              big_text(
                text: "Popular",
              ),
              SizedBox(
                width: 3,
              ),
              big_text(text: "."),
              SizedBox(
                width: 5,
              ),
              small_text(text: "In Food Pairing", size: 14),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: ht * 0.6,
          width: wd * .95,
          child: ListView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 30, top: 4, bottom: 4),
                  child: Row(children: [
                    Container(
                      height: ht * .13,
                      width: wd * .25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/food12.png")),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    //SizedBox(width: 2,),
                    Container(
                      height: ht * .11,
                      width: wd * .54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            big_text(text: "Nutrioous meal in India"),
                            SizedBox(
                              height: 4,
                            ),
                            small_text(text: "with Indian characterstics"),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                icon_text(
                                  icon: Icons.location_on_outlined,
                                  iconcolor: Colors.blue.shade300,
                                  text: "1.5 Km",
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                icon_text(
                                  icon: Icons.access_time_rounded,
                                  iconcolor: Colors.red,
                                  text: "40 Minutes",
                                  size: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                );
              }),
        )
      ],
    );
  }

  Widget _foodpageitem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentpage.floor()) {
      var currscale = 1 - (_currentpage - index) * (1 - _scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == _currentpage.floor() + 1) {
      var currscale =
          _scalefactor + (_currentpage - index + 1) * (1 - _scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1);
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == _currentpage.floor() - 1) {
      var currscale = 1 - (_currentpage - index) * (1 - _scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1);
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else {
      var currscale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, _height * (1 - currscale) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            margin: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Colors.blueGrey : Colors.amber.shade300,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      offset: Offset(0, 5))
                ],
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                  padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                  child: app_column(text: "Chinise Side")),
            ),
          ),
        ],
      ),
    );
  }
}
