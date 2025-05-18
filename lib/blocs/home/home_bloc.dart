import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/mappers/recipe_mapper.dart';
import 'package:myapp/models/recipe_model.dart';
import 'package:myapp/repositories/recipe/recipe_repository.dart';
import 'package:myapp/repositories/recipe/recipe_subject_repository.dart';
import 'package:myapp/view_models/recipe/recipe_view_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.recipeSubjectRepository,
    required this.recipeRepository,
    required this.recipeMapper,
  }) : super(const HomeState.unInitialized()) {
    on<HomeInitializeEvent>(_onInitialize);
    on<HomenUpdateRecipesEvent>(_onUpdateRecipes);
  }

  final RecipeSubjectRepository recipeSubjectRepository;
  final RecipeRepository recipeRepository;
  final RecipeMapper recipeMapper;

  StreamSubscription? _recipeSubscription;

  Future<void> _onInitialize(
    HomeInitializeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    _recipeSubscription ??= recipeSubjectRepository.recipes.listen((recipes) {
      add(HomeEvent.updateRecipes(recipes: recipes));
    });

    try {
      final recipes = await recipeRepository.getAll();

      recipeSubjectRepository.add(recipes);
    } on Exception catch (_) {
      emit(const HomeState.error());
    }
  }

  void _onUpdateRecipes(
    HomenUpdateRecipesEvent event,
    Emitter<HomeState> emit,
  ) {
    final recipes = recipeMapper.mapToRecipeViewModels(event.recipes);

    emit(HomeState.initialized(recipes: recipes));
  }

  @override
  Future<void> close() {
    _recipeSubscription?.cancel();

    return super.close();
  }
}
