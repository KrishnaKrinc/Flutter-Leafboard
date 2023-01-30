import 'package:flutter/material.dart';
import 'package:leafboard/customcomponents/appbody.dart';
import 'package:leafboard/customcomponents/custom_appbar.dart';
import 'package:leafboard/customcomponents/customcolors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: height / 1.9,
              color: ThemeColors.grey,
              child: const CustomAppBar(),
            ),
            const AppBody(),
          ],
        ),
      ),
    );
  }
}
