import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal/filter/bloc/filter_bloc.dart';

enum Filter { glutenFree, lactoseFree, vegeterian, vegan }

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late bool isGlutenFree;
  late bool isLactoseFree;
  late bool isVegeterian;
  late bool isVegan;

  FilterCubit get cubit => context.read<FilterCubit>();

  @override
  void initState() {
    isGlutenFree = cubit.state[Filter.glutenFree]!;
    isLactoseFree = cubit.state[Filter.lactoseFree]!;
    isVegan = cubit.state[Filter.vegan]!;
    isVegeterian = cubit.state[Filter.vegeterian]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        cubit.updateFilters({
          Filter.glutenFree: isGlutenFree,
          Filter.lactoseFree: isLactoseFree,
          Filter.vegan: isVegan,
          Filter.vegeterian: isVegeterian,
        });
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Фильтры")),
        body: ListView(
          children: [
            SwitchListTile(
              value: isGlutenFree,
              onChanged: (value) => setState(() => isGlutenFree = value),
              title: Text(
                "Без глютена",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Показывать только блюда без глютена",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SwitchListTile(
              value: isLactoseFree,
              onChanged: (value) => setState(() => isLactoseFree = value),
              title: Text(
                "Без лактозы",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Показывать только блюда без лактозы",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SwitchListTile(
              value: isVegeterian,
              onChanged: (value) => setState(() => isVegeterian = value),
              title: Text(
                "Вегетерианские",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Показывать только вегетерианские блюда",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SwitchListTile(
              value: isVegan,
              onChanged: (value) => setState(() => isVegan = value),
              title: Text(
                "Веганские",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Показывать только веганские блюда",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
