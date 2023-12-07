import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';

void main() {
  group('GameStats', () {
    test('returns correct values for GameStatus.loading', () {
      const status = GameState.loading();
      expect(status, const GameState.loading());
    });

    test('returns correct values for GameStatus.success', () {
      const status = GameState.success(GamesResponse(count: 1,next: '',previous: '',results: [],user_platforms: false));
      expect(status, const GameState.success(GamesResponse(count: 1,next: '',previous: '',results: [],user_platforms: false)));
    });

    test('returns correct values for GameStatus.failure', () {
      const status = GameState.failure("");
      expect(status, const GameState.failure(""));
    });
    test('returns correct values for GameStatus.empty', () {
      const status = GameState.empty();
      expect(status, const GameState.empty());
    });
  });
}