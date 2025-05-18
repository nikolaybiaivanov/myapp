import 'package:myapp/models/recipe_model.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

class RecipeMapper {
  List<RecipeViewModel> mapToRecipeViewModels(List<RecipeModel> recipeModels) {
    return recipeModels.map(mapToRecipeViewModel).toList();
  }

  RecipeViewModel mapToRecipeViewModel(RecipeModel recipeModel) {
    return RecipeViewModel(
      id: recipeModel.id,
      name: recipeModel.name,
      description: recipeModel.description,
    );
  }
}
