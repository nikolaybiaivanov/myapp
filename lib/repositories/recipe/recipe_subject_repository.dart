import 'package:myapp/models/recipe_model.dart';
import 'package:rxdart/rxdart.dart';

class RecipeSubjectRepository {
  final _recipeSubject = BehaviorSubject<List<RecipeModel>>();

  ValueStream<List<RecipeModel>> get recipes => _recipeSubject.stream;
  List<RecipeModel> get currentRecipes => _recipeSubject.valueOrNull ?? [];

  void add(List<RecipeModel> recipes) {
    _recipeSubject.add(recipes);
  }

  void append(List<RecipeModel> recipes) {
    _recipeSubject.add([...currentRecipes, ...recipes]);
  }
  
  void close() {
    _recipeSubject.close();
  }
}