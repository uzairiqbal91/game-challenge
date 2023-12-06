import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';

class Empty extends StatelessWidget {
  final String? errorMessage;

  const Empty({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error_outline),
        Text(
          errorMessage ?? AppStrings.NO_DATA_FOUND,
        ),
      ],
    );
  }
}