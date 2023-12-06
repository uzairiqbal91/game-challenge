import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';
import 'package:gamechallange/presentation/screens/dashboard/game_cubit/game_cubit.dart';
import 'package:gamechallange/presentation/screens/dashboard/widgets/game_item_widget.dart';
import 'package:gamechallange/presentation/widgets/base_widget.dart';

import '../../../core/constants/app_constatns.dart';
import '../../../core/constants/pallete.dart';
import '../../widgets/empty.dart';
import '../../widgets/laoding.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  bool _isLastPage = false;
  final List<Game> _games = [];

  @override
  void initState() {
    super.initState();

    context.read<GameCubit>().fetchGames(const GameParams());

    _scrollController.addListener(() async {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          if (!_isLastPage) {
            _currentPage++;
            await context
                .read<GameCubit>()
                .fetchGames(GameParams(page: _currentPage));
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: RefreshIndicator(
        color: Palette.primary,
        backgroundColor: Palette.bacgrkound,
        onRefresh: () {
          _currentPage = 1;
          _isLastPage = false;
          _games.clear();

          return context
              .read<GameCubit>()
              .refreshGames(GameParams(page: _currentPage));
        },
        child: BlocBuilder<GameCubit, GameState>(
          builder: (_, state) {
            return state.when(
              loading: () => const Center(child: Loading()),
              success: (data) {
                _games.addAll(data.results ?? []);
                _isLastPage = data.next == null ? true : false;

                return ListView.builder(
                  controller: _scrollController,
                  itemCount: _isLastPage ? _games.length : _games.length + 1,
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.SCREEN_PADDING_BETWEE_TILES),
                  itemBuilder: (_, index) {
                    return index < _games.length
                        ? RecipeItemWidget(image: _games[index].background_image ?? "", name: _games[index].name ?? "", releaseDate: _games[index].released.toString() ?? "", score: _games[index].metacritic.toString() ?? "",)
                        : const Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: CircularProgressIndicator(color: Palette.primary,),
                            ),
                          );
                  },
                );
              },
              failure: (message) => Center(child: Empty(errorMessage: message)),
              empty: () => const Center(child: Empty()),
            );
          },
        ),
      ),
    );
  }
}
