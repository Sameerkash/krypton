import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData theme = ThemeData(
    // main colors

    // background colors
    primaryColor: Colors.black,
    backgroundColor: Colors.grey[800],
    scaffoldBackgroundColor: Colors.grey[800],
    bottomAppBarColor: Colors.grey[800],
    cardColor: Colors.black,

    // other colors
    splashColor: Colors.grey,
    hoverColor: Colors.black,
    errorColor: const Color.fromRGBO(255, 0, 92, 1),
    indicatorColor: Colors.black54,

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),

    textTheme: TextTheme(
      // need to caption style (currently using default caption style)
      headline1: GoogleFonts.openSans(color: Colors.black, fontSize: 30),
      headline2: GoogleFonts.openSans(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.openSans(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800),
      headline4: GoogleFonts.openSans(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      headline5: GoogleFonts.openSans(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
      bodyText1: GoogleFonts.openSans(
          color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.w600),
      bodyText2: GoogleFonts.openSans(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      caption: GoogleFonts.openSans(
          color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
      subtitle1: GoogleFonts.openSans(
          color: const Color.fromRGBO(164, 164, 178, 1),
          fontSize: 14,
          fontWeight: FontWeight.w700),
      subtitle2: GoogleFonts.openSans(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.w300),
      labelMedium: GoogleFonts.openSans(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w900),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.light,
    ),
  );
}
