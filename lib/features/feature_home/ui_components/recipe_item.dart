import 'package:flutter/material.dart';
import 'package:myapp/features/feature_home/ui_components/recipe_body.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    required this.recipeViewModel,
    required this.onPressed,
    super.key,
  });

  final RecipeViewModel recipeViewModel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: RecipeBody(recipeViewModel: recipeViewModel),
          ),
        ),
      ),
    );
  }
}
