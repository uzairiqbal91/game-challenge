import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamechallange/core/helper/common.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';

import '../../../../core/constants/app_constatns.dart';
import '../../../../core/error.dart';
import '../../../../data/models/games_response.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(this._gameUseCase) : super(const _Loading());
  final GameUseCase _gameUseCase;

  Future<void> fetchGames(GameParams gameParams,{bool isKey = true}) async {
    /// Only show loading in 1 page
    await _fetchData(gameParams,isKey);
  }

  Future<void> refreshGames(GameParams gameParams,{bool isKey = true}) async {
    await _fetchData(gameParams,isKey);
  }

  Future<void> _fetchData(GameParams gameParams,bool isKey) async {
    if(isKey){
      gameParams = GameParams(key: getApiKey);
    }

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
