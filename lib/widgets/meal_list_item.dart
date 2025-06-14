import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';

class MealListItem extends StatelessWidget {
  final MealModel meal;

  const MealListItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            meal.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(color: Colors.black.withAlpha(150), height: 80),
        ],
      ),
    );
  }
}
