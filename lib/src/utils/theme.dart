import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'colors.dart';

ThemeData mainTheme() => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: blue,
      primaryColor: blue,
      appBarTheme: const AppBarTheme(
        foregroundColor: white,
        elevation: 0,
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.lato(
          fontSize: 14.sp,
          color: black,
          fontWeight: FontWeight.w600,
        ),
        bodyText1: GoogleFonts.lato(
          fontSize: 14.sp,
          color: black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
