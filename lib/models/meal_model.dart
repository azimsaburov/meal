enum Complexity { simple, medium, hard }

extension ComplexityExtension on Complexity{
  String get title {
    switch(this){
      case Complexity.simple:
        return 'Простое';
      case Complexity.medium:
        return 'Среднее';
      case Complexity.hard:
        return 'Сложное';
    }
  }
}

enum Affordability { affordable, pricey, luxury }

extension AffordabilityExtention on Affordability{
  String get title {
    switch(this){
      case Affordability.affordable:
        return 'Доступный';
      case Affordability.pricey:
        return 'Дорогой';
      case Affordability.luxury:
        return 'Люксовый';
    }
  }
}

class MealModel {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingridients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegeterian;
  final bool isVegan;
  final List<String> categoryIds;

  const MealModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingridients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.categoryIds,
    this.isGlutenFree = false,
    this.isLactoseFree = false,
    this.isVegeterian = false,
    this.isVegan = false,
    
  });
}
