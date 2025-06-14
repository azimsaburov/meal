import 'package:flutter/material.dart';
import 'package:meal/models/category_model.dart';
import 'package:meal/models/meal_model.dart';

class CategoryGridTile extends StatelessWidget {
  final CategoryModel category;
  final List<MealModel> meals;

  const CategoryGridTile({
    super.key,
    required this.category,
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    //GestureDetector считывает нажатия, без визуала
    //InkWell считывает нажатия имеет свой визуал
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.black,
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          '/meals',
          arguments: category.title,
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withAlpha(255),
              category.color.withAlpha(150),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
