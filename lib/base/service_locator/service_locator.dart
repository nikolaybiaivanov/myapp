import 'package:get_it/get_it.dart';
import 'package:myapp/base/helpers.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/repositories/recipe/recipe_repository.dart';
import 'package:myapp/repositories/recipe/recipe_subject_repository.dart';

class ServiceLocator {
  static GetIt serviceLocator = GetIt.instance;

  static void setUp() {
    serviceLocator
      ..registerLazySingleton(RecipeSubjectRepository.new)
      ..registerLazySingleton(RecipeRepository.new)
      ..registerFactory(() => HomeBloc(
          recipeSubjectRepository: get(),
          recipeRepository: get(),
        ),
      );
  }
}