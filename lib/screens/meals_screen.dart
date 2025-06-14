import 'package:flutter/material.dart';
//import 'package:meal/models/category_model.dart';
import 'package:meal/models/meal_model.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as List;
    final String titile = arg[0];
    final List<MealModel> meal = arg[1];
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
      body: ListView(
        children: List.generate(meal.length, (index) {
          return Container(
            margin: EdgeInsets.all(10),
            color: Colors.cyanAccent,
            child: Column(
              children: [
                Text(meal[index].title),
                Text(meal[index].complexity.toString()),
                Text(meal[index].affordability.toString()),
              ],
            ),
          );
        }),
      ),
    );
  }
}
