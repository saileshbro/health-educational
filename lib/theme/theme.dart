import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData _base = ThemeData.light();
ThemeData kLightTheme(BuildContext context) => _base.copyWith(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.red[700]),
        elevation: 0,
        color: Colors.white,
      ),
      textTheme: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
      ),
      scaffoldBackgroundColor: Colors.white,
    );
