import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/data/theme_data.dart';
import 'package:meal/filter/bloc/filter_bloc.dart';
import 'package:meal/filter/ui/filter_screen.dart';
import 'package:meal/screens/tabs_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider(
      create: (context) => FilterCubit({
        Filter.glutenFree: false,
        Filter.lactoseFree: false,
        Filter.vegan: false,
        Filter.vegeterian: false,
      }),
      child: MaterialApp(
        theme: theme,
        initialRoute: '/',
        routes: {'/': (context) => TabsScreen()},
      ),
    ),
  );
}
