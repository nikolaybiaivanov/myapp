part of 'recipe_bloc.dart';

@freezed
sealed class RecipeState with _$RecipeState {
  const factory RecipeState.unInitialized() = RecipeUninitializezState;

  const factory RecipeState.initialized(RecipeViewModel recipe) =
      RecipeInitializedState;

  const factory RecipeState.loading() = RecipeLoadingState;

  const factory RecipeState.error() = RecipeErrorState;
}
