import 'package:flutter/material.dart';
import 'package:meal/data/dammy_data.dart';
import 'package:meal/widgets/meal_list_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as String;
    final String titile = arg;
    return Scaffold(
      appBar: AppBar(
        title: Text(titile),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=> MealListItem(meal: meals[index]),
        separatorBuilder:(context, index)=> SizedBox(height: 10,),
        itemCount: meals.length,
      ),
    );
  }
}
