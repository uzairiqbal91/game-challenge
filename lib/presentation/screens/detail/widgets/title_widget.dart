import 'package:flutter/cupertino.dart';

import '../../../../core/constants/pallete.dart';

class TitleWidget extends StatelessWidget {
  String title;
   TitleWidget({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(

          color: Palette.titleColor,
          fontWeight: FontWeight.bold,
          fontSize: 20),
    );
  }
}