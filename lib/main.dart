import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal/screens/categories_screen.dart';
//import 'package:meal/screens/splash.dart';

final _theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 131, 57, 0),
    brightness: Brightness.dark,
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(MaterialApp(home: CategoriesScreen(), theme: _theme));
}
