import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';
import 'package:meal/screens/meal_details_screen.dart';

class MealListItem extends StatelessWidget {
  final MealModel meal;

  const MealListItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MealDetailsScreen(meal: meal);
            },
          ),
        );
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
                      //ToDo почисти код создай отдельный виджет IconTextItem 
                      //вот пример:
                      //IconTextItem(
                      //icon: Icons.money,
                      //text: meal.affordability.title,
                      //),
                      Icon(Icons.av_timer, color: Colors.white),
                      Text(
                        '${meal.duration}мин',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Icon(Icons.work_outline, color: Colors.white),
                      Text(
                        meal.complexity.title,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Icon(Icons.attach_money, color: Colors.white),
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
