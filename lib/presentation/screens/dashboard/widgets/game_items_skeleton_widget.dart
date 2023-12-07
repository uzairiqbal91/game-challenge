import 'package:flutter/material.dart';

import '../../../../core/constants/app_constatns.dart';
import '../../../../core/constants/pallete.dart';

class GameItemSkeletonWidget extends StatelessWidget {
  const GameItemSkeletonWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(AppSizes.circularRadiusSize),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.cardPadding),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Palette.skeleton,
                            borderRadius: BorderRadius.circular(18),

                          ),
                        )),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 8),
                                child: Container(
                                  height: 20,
                                  color: Palette.skeleton,
                                )
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 8),
                                child: Container(
                                  height: 20,
                                  color: Palette.skeleton,
                                )
                            ),
                            const Spacer(),
                            Padding(
                                padding:
                                const EdgeInsets.only(left: 8.0,bottom: 2),
                                child: Container(
                                  height: 20,
                                  color: Palette.skeleton,
                                )
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palette.skeleton,
                        ),

                      ),),

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