import 'package:flutter/material.dart';
import 'package:leafboard/customcomponents/customappbarimage.dart';
import 'package:leafboard/customcomponents/customcolors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CustomAppbarImage(radius: 15),
            SizedBox(width: 10),
            Text(
              'Leafboard',
              style: TextStyle(
                color: ThemeColors.blue,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 35),
        const Text(
          'Work without limits',
          style: TextStyle(
            color: ThemeColors.blue,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
