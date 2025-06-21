import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';
import 'package:meal/widgets/details_info.dart';

class MealDetailsScreen extends StatelessWidget {
  final MealModel meal;
  const MealDetailsScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.star))],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: FadeInImage.assetNetwork(
                placeholder: "assets/placeholder.png",
                image: meal.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 20),
            DetailsInfo(title: "Ингридиенты", details: meal.ingridients),
            SizedBox(height: 20),
            DetailsInfo(title: "Шаги приготовления", details: meal.steps),
          ],
        ),
      ),
    );
  }
}
