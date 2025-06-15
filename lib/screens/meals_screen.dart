import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';
import 'package:meal/widgets/meal_list_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as List;
    final String titile = arg[0];
    final List<MealModel> meals = arg[1];
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
