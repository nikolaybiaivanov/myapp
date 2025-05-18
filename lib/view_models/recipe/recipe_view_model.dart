import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_view_model.freezed.dart';
part 'recipe_view_model.g.dart';

@freezed
abstract class RecipeViewModel with _$RecipeViewModel {
  const factory RecipeViewModel({
    required int id,
    required String name,
    required String description,
  }) = _RecipeViewModel;

  factory RecipeViewModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeViewModelFromJson(json);
}
