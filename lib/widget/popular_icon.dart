import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class appicon extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final Color backgroundcolor;
  final double iconSize;
  const appicon({super.key, required this.icon, this.iconcolor=Colors.black87,
                  this.backgroundcolor=const Color(0xFF224224224),  this.iconSize=40});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: iconSize,
      width: iconSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: backgroundcolor
      ),

      child: Icon(
            icon,
            color: iconcolor,
            
      ),
    );
  }
}
