import 'package:flutter/material.dart';
import 'package:meal/data/theme_data.dart';
import 'package:meal/screens/meals_screen.dart';
import 'package:meal/screens/tabs_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        '/meals': (context) => MealsScreen(),
        // '/mealsDetail': (context) => MealDetailsScreen(),

      },
    ),
  );
}
