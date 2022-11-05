import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData ligthTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.blue3,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.black,
      ));
}
