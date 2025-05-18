// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeViewModel {

 int get id; String get name; String get description;
/// Create a copy of RecipeViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeViewModelCopyWith<RecipeViewModel> get copyWith => _$RecipeViewModelCopyWithImpl<RecipeViewModel>(this as RecipeViewModel, _$identity);

  /// Serializes this RecipeViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'RecipeViewModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $RecipeViewModelCopyWith<$Res>  {
  factory $RecipeViewModelCopyWith(RecipeViewModel value, $Res Function(RecipeViewModel) _then) = _$RecipeViewModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description
});




}
/// @nodoc
class _$RecipeViewModelCopyWithImpl<$Res>
    implements $RecipeViewModelCopyWith<$Res> {
  _$RecipeViewModelCopyWithImpl(this._self, this._then);

  final RecipeViewModel _self;
  final $Res Function(RecipeViewModel) _then;

/// Create a copy of RecipeViewModel
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

class _RecipeViewModel implements RecipeViewModel {
  const _RecipeViewModel({required this.id, required this.name, required this.description});
  factory _RecipeViewModel.fromJson(Map<String, dynamic> json) => _$RecipeViewModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;

/// Create a copy of RecipeViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeViewModelCopyWith<_RecipeViewModel> get copyWith => __$RecipeViewModelCopyWithImpl<_RecipeViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'RecipeViewModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RecipeViewModelCopyWith<$Res> implements $RecipeViewModelCopyWith<$Res> {
  factory _$RecipeViewModelCopyWith(_RecipeViewModel value, $Res Function(_RecipeViewModel) _then) = __$RecipeViewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description
});




}
/// @nodoc
class __$RecipeViewModelCopyWithImpl<$Res>
    implements _$RecipeViewModelCopyWith<$Res> {
  __$RecipeViewModelCopyWithImpl(this._self, this._then);

  final _RecipeViewModel _self;
  final $Res Function(_RecipeViewModel) _then;

/// Create a copy of RecipeViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_RecipeViewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
