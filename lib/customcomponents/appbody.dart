import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leafboard/customcomponents/custombutton.dart';
import 'package:leafboard/customcomponents/customcolors.dart';
import 'package:leafboard/views/signup.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: ThemeColors.grey,
      height: height / 2.2,
      width: width,
      child: Column(
        children: <Widget>[
          SizedBox(height: height / 28),
          const Text(
            'Leafboard',
            style: TextStyle(
              color: ThemeColors.blue,
              fontSize: 50,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height / 20),
          const Text(
            'A platform built for a new way of working',
            style: TextStyle(
              color: ThemeColors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: height / 6),
          CustomButton(
            text: 'Get Started for Free',
            width: 200,
            onTap: () {
              Get.to(() => Signup());
            },
          ),
        ],
      ),
    );
  }
}
