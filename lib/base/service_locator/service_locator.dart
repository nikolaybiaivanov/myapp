import 'package:get_it/get_it.dart';
import 'package:myapp/base/helpers.dart';
import 'package:myapp/blocs/home/home_bloc.dart';
import 'package:myapp/blocs/recipe/recipe_bloc.dart';
import 'package:myapp/mappers/recipe_mapper.dart';
import 'package:myapp/repositories/recipe/recipe_repository.dart';
import 'package:myapp/repositories/recipe/recipe_subject_repository.dart';
import 'package:myapp/theme/app_localizations.dart';

class ServiceLocator {
  static GetIt serviceLocator = GetIt.instance;

  static void setUp() {
    _registerBase();
    _registerMappers();
    _registerRepositories();
    _registerBlocs();
  }

  static void _registerRepositories() {
    serviceLocator
      ..registerLazySingleton(RecipeSubjectRepository.new)
      ..registerLazySingleton(RecipeRepository.new);
  }

  static void _registerMappers() {
    serviceLocator.registerLazySingleton(RecipeMapper.new);
  }

  static void _registerBase() {
    serviceLocator.registerLazySingleton(AppLocalizations.new);
  }

  static void _registerBlocs() {
    serviceLocator
      ..registerFactory(
        () => HomeBloc(
          recipeSubjectRepository: get(),
          recipeRepository: get(),
          recipeMapper: get(),
        ),
      )
      ..registerFactory(
        () => RecipeBloc(recipeRepository: get(), recipeMapper: get()),
      );
  }
}
