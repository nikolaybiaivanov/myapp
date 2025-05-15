import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/models/recipe_model.dart';

class RecipeRepository {
  Future<List<RecipeModel>> getAll() async {
    final jsonString = await rootBundle.loadString('assets/recipes.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((json) => RecipeModel.fromJson(json)).toList();
  }
}