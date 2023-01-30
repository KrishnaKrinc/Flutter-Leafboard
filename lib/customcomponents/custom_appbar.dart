import 'package:flutter/material.dart';
import 'package:leafboard/customcomponents/customappbarimage.dart';
import 'package:leafboard/customcomponents/customappbarshape.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Positioned(
          height: 350,
          // height: MediaQuery. of(context). size. height/2.25,
          width: MediaQuery.of(context).size.width,
          child: const CustomAppBarShape(borderRadius: 110),
        ),
        const Positioned(
          top: 282,
          child: CustomAppbarImage(radius: 62),
        ),
      ],
    );
  }
}
