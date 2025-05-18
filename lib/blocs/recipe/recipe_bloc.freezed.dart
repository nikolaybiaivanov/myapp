// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeEvent {

 int get id;
/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeEventCopyWith<RecipeEvent> get copyWith => _$RecipeEventCopyWithImpl<RecipeEvent>(this as RecipeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RecipeEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $RecipeEventCopyWith<$Res>  {
  factory $RecipeEventCopyWith(RecipeEvent value, $Res Function(RecipeEvent) _then) = _$RecipeEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$RecipeEventCopyWithImpl<$Res>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._self, this._then);

  final RecipeEvent _self;
  final $Res Function(RecipeEvent) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class RecipeInitializeEvent implements RecipeEvent {
  const RecipeInitializeEvent({required this.id});
  

@override final  int id;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeInitializeEventCopyWith<RecipeInitializeEvent> get copyWith => _$RecipeInitializeEventCopyWithImpl<RecipeInitializeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeInitializeEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RecipeEvent.initialize(id: $id)';
}


}

/// @nodoc
abstract mixin class $RecipeInitializeEventCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $RecipeInitializeEventCopyWith(RecipeInitializeEvent value, $Res Function(RecipeInitializeEvent) _then) = _$RecipeInitializeEventCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class _$RecipeInitializeEventCopyWithImpl<$Res>
    implements $RecipeInitializeEventCopyWith<$Res> {
  _$RecipeInitializeEventCopyWithImpl(this._self, this._then);

  final RecipeInitializeEvent _self;
  final $Res Function(RecipeInitializeEvent) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RecipeInitializeEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RecipeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeState()';
}


}

/// @nodoc
class $RecipeStateCopyWith<$Res>  {
$RecipeStateCopyWith(RecipeState _, $Res Function(RecipeState) __);
}


/// @nodoc


class RecipeUninitializezState implements RecipeState {
  const RecipeUninitializezState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeUninitializezState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeState.unInitialized()';
}


}




/// @nodoc


class RecipeInitializedState implements RecipeState {
  const RecipeInitializedState(this.recipe);
  

 final  RecipeViewModel recipe;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeInitializedStateCopyWith<RecipeInitializedState> get copyWith => _$RecipeInitializedStateCopyWithImpl<RecipeInitializedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeInitializedState&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'RecipeState.initialized(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $RecipeInitializedStateCopyWith<$Res> implements $RecipeStateCopyWith<$Res> {
  factory $RecipeInitializedStateCopyWith(RecipeInitializedState value, $Res Function(RecipeInitializedState) _then) = _$RecipeInitializedStateCopyWithImpl;
@useResult
$Res call({
 RecipeViewModel recipe
});


$RecipeViewModelCopyWith<$Res> get recipe;

}
/// @nodoc
class _$RecipeInitializedStateCopyWithImpl<$Res>
    implements $RecipeInitializedStateCopyWith<$Res> {
  _$RecipeInitializedStateCopyWithImpl(this._self, this._then);

  final RecipeInitializedState _self;
  final $Res Function(RecipeInitializedState) _then;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(RecipeInitializedState(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeViewModel,
  ));
}

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeViewModelCopyWith<$Res> get recipe {
  
  return $RecipeViewModelCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

/// @nodoc


class RecipeLoadingState implements RecipeState {
  const RecipeLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeState.loading()';
}


}




/// @nodoc


class RecipeErrorState implements RecipeState {
  const RecipeErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeState.error()';
}


}




// dart format on
