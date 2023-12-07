import 'package:flutter/material.dart';

import '../../../../core/constants/pallete.dart';

class EmptyImagePlaceholderwidget extends StatelessWidget {
  double height;
  double width;
  EmptyImagePlaceholderwidget({super.key, this.height = 100, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Icon(
          Icons.videogame_asset_rounded,
          color: Palette.bacgrkound,
          size: height / 2,
        ),
      ),
    );
  }
}
