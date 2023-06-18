import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(90),
                          text: "Skip intro",
                          variant: ButtonVariant.OutlineIndigoA200,
                          shape: ButtonShape.CircleBorder16,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.NotoSansSemiBold12,
                          onTap: () {
                            onTapSkipintro(context);
                          },
                          alignment: Alignment.centerRight),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllo,
                          height: getVerticalSize(300),
                          width: getHorizontalSize(176),
                          margin: getMargin(top: 38)),
                      Container(
                          width: getHorizontalSize(276),
                          margin: getMargin(left: 17, top: 55, right: 18),
                          child: Text("Take Medicines on\nTime",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansBold30.copyWith(
                                  letterSpacing: getHorizontalSize(0.06)))),
                      Container(
                          width: getHorizontalSize(242),
                          margin: getMargin(left: 34, top: 20, right: 34),
                          child: Text(
                              "we will remind you to take your medicines on time",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansRegular16.copyWith(
                                  letterSpacing: getHorizontalSize(0.19)))),
                      Container(
                          height: getSize(88),
                          width: getSize(88),
                          margin: getMargin(top: 56),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBtnshadow,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(68),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(10)),
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapBtn(context);
                                    },
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.indigoA200,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                        child: Container(
                                            height: getSize(88),
                                            width: getSize(88),
                                            padding: getPadding(all: 24),
                                            decoration: AppDecoration
                                                .fillIndigoA200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  alignment: Alignment.center)
                                            ])))))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgStepspagination,
                          height: getVerticalSize(4),
                          width: getHorizontalSize(198),
                          margin: getMargin(top: 40))
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpScreen.
  onTapSkipintro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the onboardingTwoScreen.
  onTapBtn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }
}
