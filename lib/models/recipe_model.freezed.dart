// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeModel {

 int get id; String get name; String get description;
/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<RecipeModel> get copyWith => _$RecipeModelCopyWithImpl<RecipeModel>(this as RecipeModel, _$identity);

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'RecipeModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $RecipeModelCopyWith<$Res>  {
  factory $RecipeModelCopyWith(RecipeModel value, $Res Function(RecipeModel) _then) = _$RecipeModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description
});




}
/// @nodoc
class _$RecipeModelCopyWithImpl<$Res>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._self, this._then);

  final RecipeModel _self;
  final $Res Function(RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RecipeModel implements RecipeModel {
  const _RecipeModel({required this.id, required this.name, required this.description});
  factory _RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeModelCopyWith<_RecipeModel> get copyWith => __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'RecipeModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RecipeModelCopyWith<$Res> implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(_RecipeModel value, $Res Function(_RecipeModel) _then) = __$RecipeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description
});




}
/// @nodoc
class __$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(this._self, this._then);

  final _RecipeModel _self;
  final $Res Function(_RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_RecipeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
