import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/models/recipe_model.dart';
import 'package:myapp/repositories/recipe/recipe_repository.dart';
import 'package:myapp/repositories/recipe/recipe_subject_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.recipeSubjectRepository,
    required this.recipeRepository,
  }) : super(const HomeState.unInitialized()) {
    on<HomeInitializeEvent>(_onInitialize);
    on<HomenUpdateRecipesEvent>(_onUpdateRecipes);
  }

  final RecipeSubjectRepository recipeSubjectRepository;
  final RecipeRepository recipeRepository;

  StreamSubscription? _recipeSubscription;

  Future<void> _onInitialize(HomeInitializeEvent event,  Emitter<HomeState> emit) async {
    _recipeSubscription ??= recipeSubjectRepository.recipes.listen((recipes) {
        add(HomeEvent.updateRecipes(recipes: recipes));
    });

    final recipes = await recipeRepository.getAll();
    recipeSubjectRepository.add(recipes);
  }

  void _onUpdateRecipes(HomenUpdateRecipesEvent event,  Emitter<HomeState> emit) {
    emit(HomeState.initialized(recipes: event.recipes));
  }

  @override
  Future<void> close() {
    _recipeSubscription?.cancel();

    return super.close();
  }
}
