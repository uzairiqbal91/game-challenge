import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';

import '../../core/constants/pallete.dart';

class Loading extends StatelessWidget {
  const Loading({this.showMessage = true});

  final bool showMessage;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: Palette.primary,),
          Visibility(
            visible: showMessage,
            child: Text(
              AppStrings.PLEASE_WAIT,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}