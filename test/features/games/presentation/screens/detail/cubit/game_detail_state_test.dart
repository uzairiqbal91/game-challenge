import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';
import 'package:gamechallange/presentation/screens/detail/cubit/game_detail_cubit.dart';

void main() {
  group('GameDetailStats', () {
    test('returns correct values for GameDetailStatus.loading', () {
      const status = GameDetailState.loading();
      expect(status, const GameDetailState.loading());
    });

    test('returns correct values for GameDetailStatus.success', () {
      const status = GameDetailState.success(GamesDetailResponse(id: 1, name: "", description: "", developers: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")],genres: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")],publishers: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")]));
      expect(status, const GameDetailState.success(GamesDetailResponse(id: 1, name: "", description: "", developers: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")],genres: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")],publishers: [Developer(id: 1, name: "", slug: "", games_count: 1, image_background:  "")])));
    });

    test('returns correct values for GameDetailStatus.failure', () {
      const status = GameDetailState.failure("");
      expect(status, const GameDetailState.failure(""));
    });
    test('returns correct values for GameDetailStatus.empty', () {
      const status = GameDetailState.empty();
      expect(status, const GameDetailState.empty());
    });
  });
}