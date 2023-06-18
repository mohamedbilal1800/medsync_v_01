import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class PasswordRemiderStepThreeScreen extends StatelessWidget {
  const PasswordRemiderStepThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 110),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgIllo,
                          height: getVerticalSize(260),
                          width: getHorizontalSize(161)),
                      Container(
                          width: getHorizontalSize(191),
                          margin: getMargin(top: 60, bottom: 5),
                          child: Text("Your password has\nbeen changed",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansBold20.copyWith(
                                  letterSpacing: getHorizontalSize(0.24))))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(60),
                width: getHorizontalSize(312),
                margin: getMargin(left: 24, right: 24, bottom: 36),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgBtnshadowIndigoA100,
                      height: getVerticalSize(20),
                      width: getHorizontalSize(240),
                      radius: BorderRadius.circular(getHorizontalSize(10)),
                      alignment: Alignment.bottomCenter),
                  CustomButton(
                      height: getVerticalSize(56),
                      width: getHorizontalSize(312),
                      text: "Log in",
                      suffixWidget: Container(
                          margin: getMargin(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright)),
                      onTap: () {
                        onTapLogin(context);
                      },
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginOneScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
