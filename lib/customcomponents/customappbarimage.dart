import 'package:flutter/material.dart';

class CustomAppbarImage extends StatelessWidget {
  final double radius;
  const CustomAppbarImage({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(radius),
          child: const Image(
            image: AssetImage('assets/logo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}
