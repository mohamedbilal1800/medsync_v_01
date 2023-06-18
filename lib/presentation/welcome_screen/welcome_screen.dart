import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () =>
            Navigator.pushNamed(context, AppRoutes.welcomeScreenSpacingScreen));
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoblackremovebg,
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
