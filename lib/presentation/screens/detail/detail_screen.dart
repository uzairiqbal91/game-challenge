import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';
import 'package:gamechallange/core/constants/pallete.dart';
import 'package:gamechallange/presentation/screens/detail/cubit/game_detail_cubit.dart';
import 'package:gamechallange/presentation/screens/detail/widgets/category_list_widget.dart';
import 'package:gamechallange/presentation/screens/detail/widgets/game_detail_widget.dart';
import 'package:gamechallange/presentation/screens/detail/widgets/title_widget.dart';
import 'package:gamechallange/presentation/widgets/base_widget.dart';

import '../../../core/di/di.dart';
import '../../../data/models/game_detail_response.dart';
import '../../../data/models/games_response.dart';
import '../../../domain/usecase/detail/game_detail_usecase.dart';
import '../../widgets/empty.dart';
import '../dashboard/widgets/borderd_image_widget.dart';
import '../dashboard/widgets/empty_widget_placeholder_widget.dart';

class DetailsScreen extends StatefulWidget {
  int id;
  final String image;
  final String name;
  final String releaseDate;
  final String score;

  DetailsScreen(
      {super.key,
      required this.id,
      required this.image,
      required this.name,
      required this.releaseDate,
      required this.score});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      isPadding: false,
      child: Stack(
        children: [
          Scaffold(
            body: ListView(
              children: [
                AspectRatio(
                    aspectRatio: 1.2,
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: widget.image,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) =>
                               Center(child: EmptyImagePlaceholderwidget()),
                          errorWidget: (context, url, error) =>
                               Center(child: EmptyImagePlaceholderwidget()),
                        ),
                        Positioned(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              color: Palette.titleColor.withOpacity(0.8),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        widget.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Palette.textColor,
                                            fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_month,
                                          color: Palette.textColor,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  widget.releaseDate
                                                      .split(" ")[0],
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                GameDetailWidget(
                  id: widget.id,
                )
              ],
            ),
          ),
          AppBar(
            forceMaterialTransparency: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  backgroundColor: Palette.textColor.withOpacity(0.8),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Palette.titleColor,
                  size: 20,
                ),
              ),
            ),
            actions: [
              widget.score == "null"
                  ? const SizedBox()
                  : Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Palette.textColor.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            children: [
                              Text(
                                widget.score,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Palette.titleColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 4),
                              // SvgPicture.asset("assets/icons/Star Icon.svg"),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ],
      ),
    );
  }

}




