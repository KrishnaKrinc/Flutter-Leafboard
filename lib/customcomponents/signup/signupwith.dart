import 'package:flutter/material.dart';
import 'package:leafboard/customcomponents/customcolors.dart';

class SignUpWith extends StatelessWidget {
  final String imagePath;
  final String text;
  const SignUpWith({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: ThemeColors.grey,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox.fromSize(
            size: const Size.fromRadius(9.5),
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
