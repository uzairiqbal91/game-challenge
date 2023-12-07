import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';

import '../../../../core/constants/app_constatns.dart';
import '../../../../core/error.dart';
import '../../../../core/helper/common.dart';
import '../../../../domain/usecase/detail/game_detail_usecase.dart';

part 'game_detail_state.dart';
part 'game_detail_cubit.freezed.dart';

class GameDetailCubit extends Cubit<GameDetailState> {
  GameDetailCubit(this._gameUseCase) : super(const _Loading());
  final GameDetailUseCase _gameUseCase;

  Future<void> fetchGameDetail(GameDetailParams gameParams,{bool isKey = true}) async {
    /// Only show loading in 1 page
    await _fetchData(gameParams,isKey);
  }

  Future<void> _fetchData(GameDetailParams gameParams , bool isKey) async {
    if(isKey){
      gameParams = GameDetailParams(key: getApiKey);
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
