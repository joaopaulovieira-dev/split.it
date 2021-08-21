import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroudSplash;
  Color get backgroudPrimary;
  Color get title;
  Color get button;
  Color get border;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroudSplash => Color(0xff40b38c);

  @override
  Color get title => Color(0xff40B28C);

  @override
  Color get button => Color(0xff666666);

  @override
  Color get backgroudPrimary => Color(0xffffffff);

  @override
  Color get border => Color(0xffDCE0E5);
}
