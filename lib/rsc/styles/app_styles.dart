import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class AppBoxShadowStyle {
  static List<Shadow> appBoxShadow = [
    const BoxShadow(
      color: AppColors.darkGreyColor,
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
  static TextStyle bungee100 = GoogleFonts.bungee(
    fontSize: 100,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle bungee70 = GoogleFonts.bungee(
    fontSize: 70,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle bungee50 = GoogleFonts.bungee(
    fontSize: 50,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle bungee30 = GoogleFonts.bungee(
    fontSize: 30,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bungee20 = GoogleFonts.bungee(
    fontSize: 20,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bungee15 = GoogleFonts.bungee(
    fontSize: 15,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bungeeHairline30 = GoogleFonts.bungeeHairline(
    fontSize: 30,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle bungeeHairline20 = GoogleFonts.bungeeHairline(
    fontSize: 20,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle bungeeHairline15 = GoogleFonts.bungeeHairline(
    fontSize: 15,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle robotoMono50 = GoogleFonts.robotoMono(
    fontSize: 50,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle robotoMono30 = GoogleFonts.robotoMono(
    fontSize: 30,
    color: AppColors.blackColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle robotoMono15 = GoogleFonts.robotoMono(
    fontSize: 15,
    color: AppColors.blackColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle robotoMono10 = GoogleFonts.robotoMono(
    fontSize: 10,
    color: AppColors.blackColor,
    fontWeight: FontWeight.normal,
  );
}
