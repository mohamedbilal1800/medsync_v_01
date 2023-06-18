import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

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
                          width: getHorizontalSize(261),
                          margin: getMargin(top: 38)),
                      Container(
                          width: getHorizontalSize(223),
                          margin: getMargin(left: 44, top: 40, right: 43),
                          child: Text("Find Medicines accurately",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansBold30.copyWith(
                                  letterSpacing: getHorizontalSize(0.06)))),
                      Container(
                          width: getHorizontalSize(264),
                          margin: getMargin(left: 23, top: 14, right: 24),
                          child: Text(
                              "select medicines corresponding to diseaese .",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansRegular16.copyWith(
                                  letterSpacing: getHorizontalSize(0.19)))),
                      Container(
                          height: getSize(88),
                          width: getSize(88),
                          margin: getMargin(top: 73),
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
                          svgPath: ImageConstant.imgStepspaginationIndigoA200,
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

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpScreen.
  onTapBtn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
