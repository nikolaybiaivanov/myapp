part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = HomeInitializeEvent;

  const factory HomeEvent.updateRecipes({required List<RecipeModel> recipes}) = HomenUpdateRecipesEvent;
}
