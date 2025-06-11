import 'package:flutter/material.dart';

class CategoryGridTile extends StatelessWidget {
  final List<Color> categoryGradient;
  final String title;
  const CategoryGridTile({
    super.key,
    required this.categoryGradient,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: categoryGradient),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('title'),
    );
  }
}
