import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/pallete.dart';
import 'empty_widget_placeholder_widget.dart';

class BorderdImageWidget extends StatelessWidget {
  const BorderdImageWidget({
    super.key,
    required this.image,
    this.height = 100,
    this.width = 100
  });

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          color: Palette.primary,
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context,url) =>  EmptyImagePlaceholderwidget(height: height,width: width,),
      errorWidget: (context,url,error) =>  EmptyImagePlaceholderwidget(height: height,width: width,),

    );
  }
}