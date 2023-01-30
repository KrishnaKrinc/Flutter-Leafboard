import 'package:flutter/material.dart';

import 'customcolors.dart';

class CustomAppBarShape extends StatelessWidget {
  final double borderRadius;
  const CustomAppBarShape({super.key, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(borderRadius),
        bottomRight: Radius.circular(borderRadius),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadius),
            bottomRight: Radius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
