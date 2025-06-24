import 'package:flutter/material.dart';
import 'package:meal/models/meal_model.dart';
import 'package:meal/screens/categories_screen.dart';
import 'package:meal/screens/meals_screen.dart';
import 'package:meal/widgets/side_menu.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late int _selectedPageIndex;
  late List<MealModel> favoriteMeals;

  @override
  void initState() {
    _selectedPageIndex = 0;
    favoriteMeals = [];
    super.initState();
  }

  Widget get activePage {
    if (_selectedPageIndex == 0) {
      return CategoriesScreen();
    } else {
      return MealsScreen(title: '', meal: []);
    }
  }

  Widget get appBarTitle {
    if (_selectedPageIndex == 0) {
      return Text('Категории');
    } else {
      return Text('Любимые блюда');
    }
  }
  // Обрабатываем нажатие на звездочку
  // void onFavoritePressed(MealModel meal) {
  //   bool isInFavorites = favoriteMeals.any((element) {
  //     return element.id == meal.id;
  //   });
  //   if (isInFavorites) {
  //     // удалить из любимых
  //     showInfoMessage("Блюдо ${meal.title} удалено из списка любимых");
  //     setState(() {
  //       favoriteMeals.removeWhere((element) => element.id == meal.id);
  //     });
  //   } else {
  //     // добавить в любимые
  //     showInfoMessage("Блюдо ${meal.title} добавлено в список любимых");
  //     setState(() {
  //       favoriteMeals.add(meal);
  //     });
  //   }
  // }

  // Показываем сообщение
  // void showInfoMessage(String message) {
  //   ScaffoldMessenger.of(
  //     context,
  //   ).showSnackBar(SnackBar(content: Text(message)));
  // }

  // void onFilterUpdate(Map<Filter, bool> newFilters) {
  //   setState(() {
  //     filters = newFilters;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appBarTitle),
      body: activePage,
      drawer: SideMenu(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Категории',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Любимые'),
        ],
      ),
    );
  }
}
