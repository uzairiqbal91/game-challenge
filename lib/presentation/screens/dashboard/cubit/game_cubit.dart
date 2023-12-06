import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';

import '../../../../core/error.dart';
import '../../../../data/models/games_response.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(this._gameUseCase) : super(const _Loading());
  final GameUseCase _gameUseCase;

  Future<void> fetchGames(GameParams gameParams) async {
    /// Only show loading in 1 page
    await _fetchData(gameParams);
  }

  Future<void> refreshGames(GameParams gameParams) async {
    await _fetchData(gameParams);
  }

  Future<void> _fetchData(GameParams gameParams) async {
    if (gameParams.page == 1) {
      emit(const _Loading());
    }

    final data = await _gameUseCase.call(gameParams);
    data.fold(
          (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        } else if (l is NoDataFailure) {
          emit(const _Empty());
        }
      },
          (r) => emit(_Success(r)),
    );
  }
}
