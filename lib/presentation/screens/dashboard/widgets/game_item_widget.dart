import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamechallange/core/constants/pallete.dart';

import '../../../../core/constants/app_constatns.dart';
import 'empty_widget_placeholder_widget.dart';


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
                    CachedNetworkImage(
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

                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Padding(
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
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.calendar_month,color: Palette.titleColor,),
                                          SizedBox(
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
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Center(
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
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
                      ),
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


