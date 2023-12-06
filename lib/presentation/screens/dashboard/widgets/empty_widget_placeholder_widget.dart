import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/pallete.dart';

class EmptyImagePlaceholderwidget extends StatelessWidget {
  const EmptyImagePlaceholderwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.circular(18),

      ),
      child: Center(
        child: Icon(Icons.videogame_asset_rounded,color: Palette.bacgrkound,size: 40,),
      ),
    );
  }
}