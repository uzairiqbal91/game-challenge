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
        const Icon(Icons.error_outline,size: 40,),
        const SizedBox(height: 10,),
        Text(
          errorMessage ?? AppStrings.noDataFound,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}