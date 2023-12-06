import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/pallete.dart';
import 'empty_widget_placeholder_widget.dart';

class BorderdImageWidget extends StatelessWidget {
  const BorderdImageWidget({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Palette.primary,
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context,url) => const EmptyImagePlaceholderwidget(),
      errorWidget: (context,url,error) => const EmptyImagePlaceholderwidget(),

    );
  }
}