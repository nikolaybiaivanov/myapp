import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:myapp/models/recipe_model.dart';

class RecipeRepository {
  Future<List<RecipeModel>> getAll() async {
    final jsonString = await rootBundle.loadString('assets/recipes.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((json) => RecipeModel.fromJson(json)).toList();
  }

  Future<RecipeModel?> find(int id) async {
    final recipes = await getAll();

    return recipes.firstWhereOrNull((recipe) => recipe.id == id);
  }
}
