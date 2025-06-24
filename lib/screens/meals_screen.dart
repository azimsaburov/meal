import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/filter/bloc/filter_bloc.dart';
import 'package:meal/filter/ui/filter_screen.dart';
import 'package:meal/models/meal_model.dart';
import 'package:meal/widgets/meal_list_item.dart';

class MealsScreen extends StatelessWidget {
  final String? title;
  final List<MealModel> meal;
  const MealsScreen({super.key, this.title, required this.meal});

  List<MealModel> _filterMeals(
    List<MealModel> source,
    Map<Filter, bool> filters,
  ) {
    return source.where((meal) {
      if (filters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false; // Не проходит по фильтру "Без глютена"
      }
      if (filters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false; // Не проходит по фильтру "Без лактозы"
      }
      if (filters[Filter.vegan]! && !meal.isVegan) {
        return false; // Не проходит по фильтру "Веганское"
      }
      if (filters[Filter.vegeterian]! && !meal.isVegeterian) {
        return false; // Не проходит по фильтру "Вегетарианское"
      }
      return true; // Проходит по всем фильтрам
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final Widget content = BlocBuilder<FilterCubit, Map<Filter, bool>>(
      builder: (context, state) {
        List<MealModel> filterMeals = _filterMeals(meal, state);

        return filterMeals.isNotEmpty
            ? ListView.separated(
                itemBuilder: (context, index) =>
                    MealListItem(meal: meal[index]),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: meal.length,
              )
            : Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Блюда еше не добавлены',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
      },
    );

    if (title != null) {
      return Scaffold(
        appBar: AppBar(title: Text(title!)),
        body: content,
      );
    } else {
      return content;
    }
  }
}
