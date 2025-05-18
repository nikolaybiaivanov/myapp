import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/mappers/recipe_mapper.dart';
import 'package:myapp/repositories/recipe/recipe_repository.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

part 'recipe_bloc.freezed.dart';
part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc({required this.recipeRepository, required this.recipeMapper})
    : super(const RecipeState.unInitialized()) {
    on<RecipeInitializeEvent>(_onInitialize);
  }

  final RecipeRepository recipeRepository;
  final RecipeMapper recipeMapper;

  Future<void> _onInitialize(
    RecipeInitializeEvent event,
    Emitter<RecipeState> emit,
  ) async {
    emit(const RecipeState.loading());

    try {
      final recipe = await recipeRepository.find(event.id);
      if (recipe == null) {
        emit(const RecipeState.error());

        return;
      }

      final recipeViewModel = recipeMapper.mapToRecipeViewModel(recipe);

      emit(RecipeState.initialized(recipeViewModel));
    } on Exception catch (_) {
      emit(const RecipeState.error());
    }
  }
}
