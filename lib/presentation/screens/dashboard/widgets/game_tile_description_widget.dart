import 'package:flutter/material.dart';

import '../../../../core/constants/pallete.dart';

class GameTileDescriptionWidget extends StatelessWidget {
  const GameTileDescriptionWidget({
    super.key,
    required this.name,
    required this.releaseDate,
  });

  final String name;
  final String releaseDate;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8),
            child: Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Palette.titleColor,
                  fontSize: 20),
            ),
          ),
          const Spacer(),
          Padding(
            padding:
            const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                const Icon(Icons.calendar_month,color: Palette.titleColor,),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      children: [
                        Text(
                          releaseDate.split(" ")[0],
                          maxLines: 2,
                          overflow: TextOverflow
                              .ellipsis,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}