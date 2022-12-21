import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/font/big_text.dart';
import 'package:food_delivery/font/small_text.dart';

import 'food_page_body.dart';

class mianfoodpage extends StatefulWidget {
  const mianfoodpage({super.key});

  @override
  State<mianfoodpage> createState() => _mianfoodpageState();
}

class _mianfoodpageState extends State<mianfoodpage> {
  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
   
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          height: ht,
          width: wd,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              big_text(
                                text: "Country",
                                size: 20,
                                color: Colors.amber.shade700,
                              ),
                              Row(
                                children: [
                                  small_text(
                                    text: "city",
                                    size: 20,
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.amber.shade400),
                                  child: IconButton(
                                    onPressed: (() {}),
                                    icon: Icon(Icons.search),
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                  ],

                ),

              ),
             
                    Expanded(child: 
                    SingleChildScrollView(
                      dragStartBehavior: DragStartBehavior.down,
                      child: foodpagebody(),)) 
            ],
          ),

        ),
      ),
    );
  }
}
