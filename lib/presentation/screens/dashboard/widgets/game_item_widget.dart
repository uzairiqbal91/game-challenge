import 'package:flutter/material.dart';
import 'package:gamechallange/presentation/screens/dashboard/widgets/score_card_widget.dart';

import '../../../../core/constants/app_constatns.dart';
import 'borderd_image_widget.dart';
import 'game_tile_description_widget.dart';


class GameItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String releaseDate;
  final String score;

  const GameItemWidget(
      {Key? key, required this.image, required this.name, required this.releaseDate,required this.score})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppSizes.circularRadiusSize),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.cardPadding),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: BorderdImageWidget(image: image)),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Expanded(
                      flex: 6,
                      child: GameTileDescriptionWidget(name: name, releaseDate: releaseDate),
                    ),
                    Expanded(
                        flex: 2,
                        child: ScoreCardWidget(score: score,)),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








