import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../font/big_text.dart';
import '../font/small_text.dart';
import 'icon_text.dart';

class app_column extends StatelessWidget {
  final String text;
  const app_column({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      big_text(text: text),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Wrap(
            children: List.generate(5, (index) {
              return Icon(
                Icons.star,
                color: Colors.amber.shade700,
              );
            }),
          ),
          SizedBox(
            width: 10,
          ),
          small_text(text: "43"),
          SizedBox(
            width: 10,
          ),
          small_text(text: "234"),
          SizedBox(
            width: 8,
          ),
          small_text(text: "Comments")
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          icon_text(
              icon: Icons.circle,
              iconcolor: Colors.amber.shade700,
              text: "Normal"),
          SizedBox(
            width: 10,
          ),
          icon_text(
              icon: Icons.location_on_outlined,
              iconcolor: Colors.blue.shade300,
              text: "1.5 Km"),
          SizedBox(
            width: 10,
          ),
          icon_text(
              icon: Icons.access_time_rounded,
              iconcolor: Colors.red,
              text: "40 Minutes"),
        ],
      )
    ]);
  }
}
