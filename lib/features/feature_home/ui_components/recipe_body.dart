import 'package:flutter/material.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

class RecipeBody extends StatelessWidget {
  const RecipeBody({required this.recipeViewModel, super.key});

  final RecipeViewModel recipeViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          recipeViewModel.name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Text(
          recipeViewModel.description,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }
}
