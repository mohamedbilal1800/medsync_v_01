import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class WelcomeScreenSpacingScreen extends StatelessWidget {
  const WelcomeScreenSpacingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 25, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 22, top: 35, right: 22, bottom: 35),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup18),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLogoblackremovebg,
                                        height: getVerticalSize(60),
                                        width: getHorizontalSize(300))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Let’s start",
                          margin: getMargin(left: 24, top: 233, right: 24),
                          suffixWidget: Container(
                              margin: getMargin(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowright)),
                          onTap: () {
                            onTapLetsstart(context);
                          },
                          alignment: Alignment.center),
                      CustomImageView(
                          svgPath: ImageConstant.imgBtnshadowIndigoA100,
                          height: getVerticalSize(20),
                          width: getHorizontalSize(240),
                          radius: BorderRadius.circular(getHorizontalSize(10)),
                          margin: getMargin(left: 52))
                    ]))));
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the onboardingOneScreen.
  onTapLetsstart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingOneScreen);
  }
}
