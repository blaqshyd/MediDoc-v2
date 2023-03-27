import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 23,
    ),
    bodyText1: GoogleFonts.poppins(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    bodyText2: GoogleFonts.poppins(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 23,
    ),
    bodyText1: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 16,
    ),
    bodyText2: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );
}
