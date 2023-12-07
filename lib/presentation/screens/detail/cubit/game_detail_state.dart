part of 'game_detail_cubit.dart';

@freezed
class GameDetailState with _$GameDetailState {
  const factory GameDetailState.loading() = _Loading;
  const factory GameDetailState.success(GamesDetailResponse data) = _Success;
  const factory GameDetailState.failure(String message) = _Failure;
  const factory GameDetailState.empty() = _Empty;
}
