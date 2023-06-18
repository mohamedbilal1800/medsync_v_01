import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            appBar: CustomAppBar(
                height: getVerticalSize(129),
                title: SizedBox(
                    height: getVerticalSize(80.3),
                    width: getHorizontalSize(201),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                              padding: getPadding(left: 24, top: 39),
                              child: Text("Hi Madison!",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNotoSansBold30.copyWith(
                                      letterSpacing:
                                          getHorizontalSize(0.06))))),
                      AppbarImage(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(198),
                          imagePath: ImageConstant.imgLogoblackremovebg40x198,
                          margin: getMargin(right: 3, bottom: 40))
                    ])),
                actions: [
                  Container(
                      height: getSize(40),
                      width: getSize(40),
                      margin: getMargin(left: 24, right: 24, bottom: 40),
                      child: Stack(alignment: Alignment.center, children: [
                        AppbarImage(
                            height: getSize(40),
                            width: getSize(40),
                            svgPath: ImageConstant.imgNotification),
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            imagePath: ImageConstant.imgImage13,
                            margin: getMargin(all: 8),
                            onTap: () {
                              onTapImagethirteen(context);
                            })
                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 55, right: 24, bottom: 55),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(all: 20),
                          decoration: AppDecoration.fillIndigoA200.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage15,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 1, bottom: 1),
                                child: Text("Med schedule",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansBold16))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapTiles(context);
                          },
                          child: Container(
                              margin: getMargin(top: 15),
                              padding: getPadding(
                                  left: 20, top: 19, right: 20, bottom: 19),
                              decoration: AppDecoration.fillIndigoA200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage17,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 20, top: 3),
                                    child: Text("Compliance History",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))
                              ]))),
                      GestureDetector(
                          onTap: () {
                            onTapTiles1(context);
                          },
                          child: Container(
                              margin: getMargin(top: 15),
                              padding: getPadding(
                                  left: 20, top: 19, right: 20, bottom: 19),
                              decoration: AppDecoration.fillIndigoA200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage16,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 20, top: 3),
                                    child: Text("Medical History",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))
                              ]))),
                      Container(
                          height: getVerticalSize(64),
                          width: getHorizontalSize(312),
                          margin: getMargin(top: 16),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCut,
                                height: getSize(32),
                                width: getSize(32),
                                alignment: Alignment.topLeft,
                                margin: getMargin(left: 16, top: 15)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(all: 20),
                                    decoration: AppDecoration.fillIndigoA200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder10),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage18,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding:
                                              getPadding(left: 20, bottom: 1),
                                          child: Text("Side Effects Checker",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNotoSansBold16))
                                    ])))
                          ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(all: 20),
                          decoration: AppDecoration.fillIndigoA200.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage19,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 1, bottom: 1),
                                child: Text("Med Finder",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansBold16))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapTiles2(context);
                          },
                          child: Container(
                              margin: getMargin(top: 15, bottom: 5),
                              padding: getPadding(
                                  left: 21, top: 19, right: 21, bottom: 19),
                              decoration: AppDecoration.fillIndigoA200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage20,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 19, top: 3),
                                    child: Text("Settings",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))
                              ])))
                    ]))));
  }

  /// Navigates to the complianceHistoryoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the complianceHistoryoneScreen.
  onTapTiles(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complianceHistoryoneScreen);
  }

  /// Navigates to the medicalHistoryOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the medicalHistoryOneScreen.
  onTapTiles1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.medicalHistoryOneScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
  onTapTiles2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the profileOneScreen.
  onTapImagethirteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileOneScreen);
  }
}
