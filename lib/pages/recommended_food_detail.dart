import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/font/big_text.dart';
import 'package:food_delivery/widget/app_icon.dart';
import 'package:food_delivery/widget/expandable_Text.dart';

import '../font/small_text.dart';

class recommendedfooddetail extends StatefulWidget {
  const recommendedfooddetail({super.key});

  @override
  State<recommendedfooddetail> createState() => _recommendedfooddetailState();
}

class _recommendedfooddetailState extends State<recommendedfooddetail> {
  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appicon(icon: Icons.clear),
                  appicon(icon: Icons.shopping_cart_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(ht*0.05),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(wd*0.05), topRight: Radius.circular(wd*0.05)),
                     color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  
                  child: Padding(
                    padding:  EdgeInsets.only(top: ht*0.01 ,bottom: ht*0.005,),
                    child: big_text(text: "Indian Dish Receipe",),
                  ),
                  width: double.maxFinite,
                ),
              ),
              backgroundColor: Colors.amber.shade400,
              pinned: true,
              expandedHeight: ht * 0.4,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food0.png",
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: wd*0.02 ,right: wd*0.02),
                child: Column(
                  children: [
                    Container(
                      child: expandable_text(text: "Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable Expandable widgets are commonly implemented using a toggle button or a clickable "),
                    )
                  ],
                )
              ),
            )
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(

              padding: EdgeInsets.only(left: wd*0.1 ,right: wd*0.1,bottom:wd*0.02 ,top: wd*0.02 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  appicon(icon: Icons.remove,backgroundcolor: Colors.amber.shade600,),
                  big_text(text: "\$12.88"+"X"+"0",color: Colors.black),
                  appicon(icon: Icons.add,backgroundcolor: Colors.amber.shade600,)

                ],
              ),
            ),

             Container(
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
              width: ht*0.09,
              height: ht*0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(wd*0.1)

              ),
              child: Icon(Icons.favorite_rounded,color: Colors.amber.shade600, size: ht*0.04,)
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

          ],
        ),
      ),
    );
  }
}
