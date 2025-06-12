import 'package:flutter/material.dart';
import 'package:meal/data/dammy_data.dart';
import 'package:meal/widgets/category_grid_tile.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 16,
        childAspectRatio: 3 / 2,
        padding: EdgeInsets.all(10),
        children: List.generate(
          categories.length,
          (index) => CategoryGridTile(category: categories[index]),
        ),
      ),
    );
  }
}
