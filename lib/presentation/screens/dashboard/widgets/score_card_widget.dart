import 'package:flutter/cupertino.dart';

import '../../../../core/constants/pallete.dart';
import 'game_tile_description_widget.dart';



class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({
    super.key,
    required this.score,
  });

  final String score;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Palette.titleColor,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                score == "null" ? "-" : score,
                overflow: TextOverflow.ellipsis,

                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.textColor,
                    fontSize: 20),
              ),
            ),
          )
      ),
    );
  }
}