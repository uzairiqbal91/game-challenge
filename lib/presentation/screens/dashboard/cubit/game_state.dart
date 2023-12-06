part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.loading() = _Loading;
  const factory GameState.success(GamesResponse data) = _Success;
  const factory GameState.failure(String message) = _Failure;
  const factory GameState.empty() = _Empty;
}


