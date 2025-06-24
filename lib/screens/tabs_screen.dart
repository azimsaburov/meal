import 'package:flutter/material.dart';
import 'package:meal/screens/categories_screen.dart';
import 'package:meal/screens/meals_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late int _selectedPageIndex;
  @override
  void initState() {
    _selectedPageIndex = 0;
    super.initState();
  }

  Widget get activePage{
    
    if(_selectedPageIndex == 0){
      return CategoriesScreen();
    }else{
      return MealsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Категории')),
      body: CategoriesScreen(),
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
