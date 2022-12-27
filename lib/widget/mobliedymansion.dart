import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class dimension {
  static double diaplayheight = Get.context!.size!.height;
  static double displaywidth = Get.context!.size!.width;

  static double height = MediaQuery.of(context).size.height;
  
  static BuildContext get context => dimension.context;
  
}
