import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitit/theme/app_theme.dart';

abstract class ApptextStyles {
  TextStyle get title;
  TextStyle get button;
}

class ApptextStylesDefault implements ApptextStyles {
  @override
  TextStyle get title => GoogleFonts.inter(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );
}
