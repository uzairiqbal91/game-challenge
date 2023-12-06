import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamechallange/core/constants/pallete.dart';
import 'package:gamechallange/presentation/screens/dashboard/widgets/score_card_widget.dart';

import '../../../../core/constants/app_constatns.dart';
import 'borderd_image_widget.dart';
import 'empty_widget_placeholder_widget.dart';
import 'game_tile_description_widget.dart';


class RecipeItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String releaseDate;
  final String score;

  const RecipeItemWidget(
      {Key? key, required this.image, required this.name, required this.releaseDate,required this.score})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppSizes.CIRCULAR_RADIUS_SIZE),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    BorderdImageWidget(image: image),
                    Expanded(
                      child: ScoreCardWidget(name: name, releaseDate: releaseDate, score: score),
                    ),
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








