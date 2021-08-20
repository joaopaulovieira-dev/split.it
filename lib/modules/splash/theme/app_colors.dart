import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroud;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroud => Color(0xff40b38c);
}
