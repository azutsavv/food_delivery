import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/widget/app_column.dart';
import 'package:food_delivery/widget/expandable_Text.dart';
import 'package:food_delivery/widget/popular_icon.dart';
import '../../font/big_text.dart';
import '../../font/small_text.dart';
import '../../widget/icon_text.dart';

class popularfooddetail extends StatelessWidget {
  const popularfooddetail({super.key});

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
       backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: ht * 0.45,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food0.png"))),
                )),
            Positioned(
                top: 10,
                left: wd * 0.04,
                right: wd * 0.04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appicon(
                      icon: Icons.chevron_left,
                      iconSize: wd * .09,
                    ),
                    appicon(
                        icon: Icons.shopping_cart_outlined, iconSize: wd * .09),
                  ],
                )),
             Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: ht * 0.45 -30,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(wd * 0.07),
                      topRight: Radius.circular(wd * 0.07),
                    ),
                  ),
                  padding: EdgeInsets.only(
                      right: wd * 0.04, left: wd * 0.04, top: ht * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      app_column(text: 'chinise side',),
                      SizedBox(height: 7,),
                      big_text(text: "Introduce",),
                      SizedBox(height: 7,),
                      Expanded(child: SingleChildScrollView(child: expandable_text(text: "aromatic iouiou oiuoipu iopuopiu poiupoiu poiupiou poiupoiu poiupoiu poiup oiuiupoiuaromatic iouiou oiuoipu iopuopiu poiupoiu poiupiou poiupoiu poiupoiu poiuparomatic iouiou oiuoipu iopuopiu poiupoiu poiupiou poiupoiu poiupoiu poiuparomatic iouiou oiuoipu iopuopiu poiupoiu poiupiou poiupoiu poiupoiu poiup"))),
                      

                    ],
                  )
            )
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(wd * 0.07),topRight: Radius.circular(wd * 0.07)
            )
          ),
          height: ht*0.12,
          padding: EdgeInsets.only(
            left: wd * 0.09,right:wd * 0.09 , top: wd * 0.04,bottom: wd * 0.04
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              width: wd*0.25,
              height: wd*0.14,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(wd*0.2)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.remove),
                  big_text(text: "0"),
                  Icon(Icons.add),
                ],
              ),

            ),
            Container(
              alignment: Alignment.center,
              width: wd*0.35,
              height: wd*0.14,
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
                borderRadius: BorderRadius.circular(wd*.2)
              ),

              child: small_text(text: "\$10 | add to cart"),

            )
          ]
          ),
        
        ),
      ),
    );
  }
}
