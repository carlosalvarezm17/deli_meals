import 'package:deli_meals/models/meal.dart';
import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('There are no favorites'),
      );
    } else {
      return Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoritesMeals[index].id,
              title: favoritesMeals[index].title,
              imageUrl: favoritesMeals[index].imageUrl,
              affordability: favoritesMeals[index].affordability,
              duration: favoritesMeals[index].duration,
              complexity: favoritesMeals[index].complexity,
            );
          },
          itemCount: favoritesMeals.length,
        ),
      );
    }
  }
}
