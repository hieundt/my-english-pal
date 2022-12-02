import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class AppBoxShadowStyle {
  static List<Shadow> appBoxShadow = [
    const BoxShadow(
      color: AppColors.greyColor,
      spreadRadius: 5,
      blurRadius: 2,
      offset: Offset(
        0,
        3,
      ), // changes position of shadow
    ),
  ];
}

class AppTextStyle {
  static TextStyle appTitle = GoogleFonts.bungee(
    fontSize: 30,
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle appDescription = GoogleFonts.bungee(
    fontSize: 15,
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle appButtonText = GoogleFonts.bungee(
    fontSize: 30,
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle appNormalText = GoogleFonts.robotoMono(
    fontSize: 15,
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.normal,
  );
}
