import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/font/small_text.dart';
import 'package:food_delivery/widget/mobliedymansion.dart';

class expandable_text extends StatefulWidget {
  final String text;
  
const expandable_text({super.key, required this.text});

  @override
  State<expandable_text> createState() => _expandable_textState();
}

class _expandable_textState extends State<expandable_text> {
  late String firsthalf;
  late String secondhalf;
  bool hiddenText = true;
  double textheight =200;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textheight) {
      firsthalf = widget.text.substring(0, textheight.toInt());
      secondhalf =
          widget.text.substring(textheight.toInt() + 1, widget.text.length);
    } else {
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty
          ? small_text(text: firsthalf)
          : Column(
              children: [
                small_text(
                    text: hiddenText
                        ? (firsthalf + "...")
                        : (firsthalf + secondhalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    small_text(
                      text: hiddenText ? "show more" : "Scroll back",
                      color: Colors.amber.shade600,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: Colors.amber.shade700,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
