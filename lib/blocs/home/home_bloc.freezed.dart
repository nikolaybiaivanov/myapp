// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class HomeInitializeEvent implements HomeEvent {
  const HomeInitializeEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitializeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.initialize()';
}


}




/// @nodoc


class HomenUpdateRecipesEvent implements HomeEvent {
  const HomenUpdateRecipesEvent({required final  List<RecipeModel> recipes}): _recipes = recipes;
  

 final  List<RecipeModel> _recipes;
 List<RecipeModel> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomenUpdateRecipesEventCopyWith<HomenUpdateRecipesEvent> get copyWith => _$HomenUpdateRecipesEventCopyWithImpl<HomenUpdateRecipesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomenUpdateRecipesEvent&&const DeepCollectionEquality().equals(other._recipes, _recipes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recipes));

@override
String toString() {
  return 'HomeEvent.updateRecipes(recipes: $recipes)';
}


}

/// @nodoc
abstract mixin class $HomenUpdateRecipesEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomenUpdateRecipesEventCopyWith(HomenUpdateRecipesEvent value, $Res Function(HomenUpdateRecipesEvent) _then) = _$HomenUpdateRecipesEventCopyWithImpl;
@useResult
$Res call({
 List<RecipeModel> recipes
});




}
/// @nodoc
class _$HomenUpdateRecipesEventCopyWithImpl<$Res>
    implements $HomenUpdateRecipesEventCopyWith<$Res> {
  _$HomenUpdateRecipesEventCopyWithImpl(this._self, this._then);

  final HomenUpdateRecipesEvent _self;
  final $Res Function(HomenUpdateRecipesEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipes = null,}) {
  return _then(HomenUpdateRecipesEvent(
recipes: null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<RecipeModel>,
  ));
}


}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// @nodoc


class HomeUninitializezState implements HomeState {
  const HomeUninitializezState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUninitializezState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.unInitialized()';
}


}




/// @nodoc


class HomeInitializedState implements HomeState {
  const HomeInitializedState({required final  List<RecipeViewModel> recipes}): _recipes = recipes;
  

 final  List<RecipeViewModel> _recipes;
 List<RecipeViewModel> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeInitializedStateCopyWith<HomeInitializedState> get copyWith => _$HomeInitializedStateCopyWithImpl<HomeInitializedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitializedState&&const DeepCollectionEquality().equals(other._recipes, _recipes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recipes));

@override
String toString() {
  return 'HomeState.initialized(recipes: $recipes)';
}


}

/// @nodoc
abstract mixin class $HomeInitializedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeInitializedStateCopyWith(HomeInitializedState value, $Res Function(HomeInitializedState) _then) = _$HomeInitializedStateCopyWithImpl;
@useResult
$Res call({
 List<RecipeViewModel> recipes
});




}
/// @nodoc
class _$HomeInitializedStateCopyWithImpl<$Res>
    implements $HomeInitializedStateCopyWith<$Res> {
  _$HomeInitializedStateCopyWithImpl(this._self, this._then);

  final HomeInitializedState _self;
  final $Res Function(HomeInitializedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipes = null,}) {
  return _then(HomeInitializedState(
recipes: null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<RecipeViewModel>,
  ));
}


}

/// @nodoc


class HomeLoadingState implements HomeState {
  const HomeLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomeErrorState implements HomeState {
  const HomeErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.error()';
}


}




// dart format on
