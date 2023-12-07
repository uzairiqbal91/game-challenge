import 'package:flutter/cupertino.dart';
import 'package:gamechallange/presentation/screens/detail/widgets/title_widget.dart';

import '../../../../core/constants/pallete.dart';
import '../../../../data/models/game_detail_response.dart';
import '../../dashboard/widgets/borderd_image_widget.dart';

class CategoryListWidget extends StatelessWidget {

  List<Developer> list;
  String title;

  CategoryListWidget({
    super.key,
    required this.list,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        TitleWidget(title: title),
        Column(
          children: list
              .map((val) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                BorderdImageWidget(
                  height: 40,
                  width: 40,
                  image: val.image_background ?? "",
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  val.name ?? "",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Palette.titleColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ))
              .toList(),
        )
      ],
    );
  }
}