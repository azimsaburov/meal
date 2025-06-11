import 'package:flutter/material.dart';
import 'package:meal/widgets/category_grid_tile.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Категории')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 16,
        childAspectRatio: 3 / 2,
        padding: EdgeInsets.all(10),
        children: [
          CategoryGridTile(
            categoryGradient: [Colors.amber, Colors.limeAccent],
            title: 'title',
          ),
          CategoryGridTile(
            categoryGradient: [Colors.green, Colors.lightGreenAccent],
            title: 'title',
          ),
          CategoryGridTile(
            categoryGradient: [Colors.deepOrange, Colors.orangeAccent],
            title: 'title',
          ),
          CategoryGridTile(
            categoryGradient: [Colors.red, Colors.pinkAccent],
            title: 'title',
          ),
          CategoryGridTile(
            categoryGradient: [Colors.deepPurple, Colors.purpleAccent],
            title: 'title',
          ),
        ],
      ),
    );
  }
}
