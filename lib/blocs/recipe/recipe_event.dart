part of 'recipe_bloc.dart';

@freezed
abstract class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.initialize({required int id}) =
      RecipeInitializeEvent;
}
