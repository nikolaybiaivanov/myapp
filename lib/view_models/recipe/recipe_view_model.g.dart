// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeViewModel _$RecipeViewModelFromJson(Map<String, dynamic> json) =>
    _RecipeViewModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$RecipeViewModelToJson(_RecipeViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
