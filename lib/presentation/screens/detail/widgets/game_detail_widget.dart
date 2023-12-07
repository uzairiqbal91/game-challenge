import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gamechallange/presentation/screens/detail/widgets/title_widget.dart';

import '../../../../core/constants/app_constatns.dart';
import '../../../../core/constants/pallete.dart';
import '../../../../domain/usecase/detail/game_detail_usecase.dart';
import '../../../widgets/empty.dart';
import '../cubit/game_detail_cubit.dart';
import 'category_list_widget.dart';

class GameDetailWidget extends StatefulWidget {
  const GameDetailWidget({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<GameDetailWidget> createState() => _GameDetailWidgetState();
}

class _GameDetailWidgetState extends State<GameDetailWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GameDetailCubit>().emit(const GameDetailState.loading());
    context
        .read<GameDetailCubit>()
        .fetchGameDetail(GameDetailParams(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameDetailCubit, GameDetailState>(
      builder: (_, state) {
        return state.when(
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: CircularProgressIndicator(
                color: Palette.primary,
              ),
            ),
          ),
          success: (data) {
            return Padding(
                padding: EdgeInsets.all(AppSizes.horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TitleWidget(title: AppStrings.description),
                    const SizedBox(
                      height: 5,
                    ),
                    HtmlWidget(
                      data.description ?? "",
                      textStyle: const TextStyle(
                          color: Palette.titleColor, fontSize: 14),
                    ),
                    data.genres!.isEmpty ? SizedBox() :CategoryListWidget(list: data.genres!,title: AppStrings.genres,),
                    data.developers!.isEmpty ? SizedBox() : CategoryListWidget(list: data.developers!,title: AppStrings.developers,),
                    data.publishers!.isEmpty ? SizedBox() : CategoryListWidget(list: data.publishers!,title: AppStrings.publishers,)



                  ],
                ));
          },
          failure: (message) => Center(child: Empty(errorMessage: message)),
          empty: () => const Center(child: Empty()),
        );
      },
    );
  }
}