part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.unInitialized() = HomeUninitializezState;

  const factory HomeState.initialized({required List<RecipeModel> recipes}) = HomeInitializedState;

  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.error() = HomeErrorState;
}
