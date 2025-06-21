import 'package:flutter/material.dart';
import 'package:meal/data/theme_data.dart';
import 'package:meal/screens/categories_screen.dart';
import 'package:meal/screens/meals_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => CategoriesScreen(),
        '/meals': (context) => MealsScreen(),
        // '/mealsDetail': (context) => MealDetailsScreen(),

      },
    ),
  );
}
