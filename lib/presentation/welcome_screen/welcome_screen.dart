import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
