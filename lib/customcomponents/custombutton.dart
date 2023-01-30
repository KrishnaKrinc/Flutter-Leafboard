import 'package:flutter/material.dart';
import 'package:leafboard/customcomponents/customcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Function()? onTap;

  const CustomButton(
      {super.key,
      required this.text,
      this.onTap,
      required this.width,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.green,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Opacity(
              opacity: 0.0,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 10,
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: onTap == null ? Colors.grey.shade600 : ThemeColors.blue,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: onTap == null ? Colors.grey.shade600 : ThemeColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
