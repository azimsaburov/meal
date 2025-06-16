import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';

class MealListItem extends StatelessWidget {
  final MealModel meal;

  const MealListItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.pushNamed(context, '/mealsDetail');
      },
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              color: Colors.black.withAlpha(150),
              width: double.infinity,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(meal.title, style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Icon(Icons.timer, color: Colors.white),
                      Text(
                        '${meal.duration}мин',
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      Icon(Icons.work_history, color: Colors.white),
                      Text(
                        meal.complexity.title,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '\$',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        meal.affordability.title,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
