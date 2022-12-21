import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/font/small_text.dart';

class icon_text extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final String text;
  final  double size;
  const icon_text({super.key, required this.icon, required this.iconcolor, required this.text,this.size=16});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconcolor,),
        SizedBox(width: 2,),
        small_text(text: text,size: size,)
      ],
    );
  }
}
