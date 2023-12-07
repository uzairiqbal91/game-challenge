import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';
import 'package:gamechallange/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:gamechallange/presentation/screens/dashboard/widgets/game_items_skeleton_widget.dart';
import 'package:gamechallange/presentation/widgets/empty.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';

class MockGameCubit extends MockCubit<GameState> implements GameCubit {}

class FakeGameState extends Fake implements GameState {}

void main() {
  late GameCubit gameCubit;
  late GamesResponse gamesResponse;

  setUpAll(() {
    HttpOverrides.global = null;
    registerFallbackValue(FakeGameState());
    registerFallbackValue(const GameParams());
  });

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await serviceLocator(isUnitTest: true);
    gameCubit = MockGameCubit();
    gamesResponse = GamesResponse.fromJson(
      json.decode(jsonReader(successGamePath)) as Map<String, dynamic>,
    );
  });

  Widget rootWidget(Widget body) {
    return BlocProvider<GameCubit>.value(
      value: gameCubit,
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        home: body,

      ),
    );
  }

  testWidgets(
    'renders DashboardScreen for GameStatus.loading',
        (tester) async {
      when(() => gameCubit.state).thenReturn(const GameState.loading());
      await tester.pumpWidget(rootWidget(const DashboardScreen()));
      await tester.pump();
      expect(find.byType(GameItemSkeletonWidget), findsWidgets);
    },
  );

  testWidgets(
    'renders DashboardScreen for GameStatus.empty',
        (tester) async {
      when(() => gameCubit.state).thenReturn(const GameState.empty());
      await tester.pumpWidget(rootWidget(const DashboardScreen()));
      await tester.pump();
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardScreen for GameStatus.failure',
        (tester) async {
      when(() => gameCubit.state).thenReturn(const GameState.failure(""));
      await tester.pumpWidget(rootWidget(const DashboardScreen()));
      await tester.pump();
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardScreen for GameStatus.success',
        (tester) async {

      when(() => gameCubit.state).thenReturn(
        GameState.success(gamesResponse),
      );

      await tester.pumpWidget(rootWidget(const DashboardScreen()));

      for (int i = 0; i < 5; i++) { await tester.pump(const Duration(seconds: 1)); }

      expect(find.byType(ListView), findsOneWidget);

    },
  );

  testWidgets(
    'trigger refresh when pull to refresh',
        (tester) async {
      when(() => gameCubit.state).thenReturn(
        GameState.success(gamesResponse),
      );
      when(() => gameCubit.refreshGames(any())).thenAnswer((_) async {});

      await tester.pumpWidget(rootWidget(const DashboardScreen()));
      for (int i = 0; i < 5; i++) { await tester.pump(const Duration(seconds: 1)); }
      await tester.fling(
        find.text('Alfred Hitchcock – Vertigo'),
        const Offset(0.0, 300.0),
        1000.0,
      );
      // // Wait for the refresh indicator to appear and settle
      for (int i = 0; i < 10; i++) { await tester.pump(const Duration(seconds: 1)); }
      //
      // // Verify that the refresh method is called
      verify(() => gameCubit.refreshGames(const GameParams(page: 1))).called(1);
    },
  );

}