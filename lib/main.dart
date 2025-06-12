import 'package:flutter/material.dart';
import 'package:meal/data/theme_data.dart';
import 'package:meal/screens/categories_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: CategoriesScreen(), theme: theme));
}
