import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData theme = ThemeData(
    // main colors
    colorScheme: ColorScheme(
      secondary: Colors.yellow,
      brightness: Brightness.dark,
      primary: Colors.black,
      onPrimary: Colors.black,
      onSecondary: Colors.yellow,
      error: const Color.fromRGBO(255, 0, 92, 1),
      onError: const Color.fromRGBO(255, 0, 92, 1),
      background: Colors.grey[800]!,
      onBackground: Colors.grey[800]!,
      surface: Colors.black,
      onSurface: Colors.black,
    ),

    scaffoldBackgroundColor: Colors.grey[800],
    bottomAppBarColor: Colors.grey[800],
    backgroundColor: Colors.grey[800],
    // other colors
    splashColor: Colors.grey,
    hoverColor: Colors.black,
    indicatorColor: Colors.black54,

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),

    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 13))),

    textTheme: TextTheme(
      // need to caption style (currently using default caption style)
      headline1: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
      headline2: GoogleFonts.poppins(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.poppins(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800),
      headline4: GoogleFonts.poppins(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      headline5: GoogleFonts.poppins(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
      bodyText1: GoogleFonts.poppins(
          color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.w600),
      bodyText2: GoogleFonts.poppins(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
      caption: GoogleFonts.poppins(
          color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
      subtitle1: GoogleFonts.poppins(
          color: const Color.fromRGBO(164, 164, 178, 1),
          fontSize: 12,
          fontWeight: FontWeight.w400),
      subtitle2: GoogleFonts.poppins(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.w300),
      labelMedium: GoogleFonts.poppins(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w900),
    ),
  );
}
