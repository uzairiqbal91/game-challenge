import 'package:flutter/cupertino.dart';

import '../../../../core/constants/pallete.dart';
import 'game_tile_description_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({
    super.key,
    required this.name,
    required this.releaseDate,
    required this.score,
  });

  final String name;
  final String releaseDate;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: GameTileDescriptionWidget(name: name, releaseDate: releaseDate),
          ),
          Expanded(
              flex: 3,
              child: Center(
                child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.textColor,
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
              ))
        ],
      ),
    );
  }
}