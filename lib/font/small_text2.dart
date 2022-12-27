import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class small_text2 extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;


   small_text2({Key? key, this.color=Colors.black87, required this.text, this.size=16,
             this.overflow=TextOverflow.ellipsis}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      style: GoogleFonts.raleway(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w300
      )
    );
  }
}
