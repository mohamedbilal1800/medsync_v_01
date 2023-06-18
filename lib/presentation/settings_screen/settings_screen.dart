import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  TextEditingController notificationsetController = TextEditingController();

  TextEditingController personaldataController = TextEditingController();

  TextEditingController supportController = TextEditingController();

  TextEditingController contactusController = TextEditingController();

  TextEditingController privacypolicyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(97),
                centerTitle: true,
                title: SizedBox(
                    height: getVerticalSize(97),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      Padding(
                          padding: getPadding(
                              left: 28, top: 46, right: 230, bottom: 27),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24),
                                width: getSize(24),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () {
                                  onTapArrowleft(context);
                                }),
                            Padding(
                                padding: getPadding(left: 12, top: 1),
                                child: Text("Settings",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNotoSansBold16))
                          ])),
                      AppbarImage(
                          height: getVerticalSize(97),
                          width: getHorizontalSize(360),
                          imagePath: ImageConstant.imgSpacing)
                    ]))),
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
                                child: Text("Support",
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
                                    child: Text("Notification Settings",
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
                                    child: Text("Personal Data",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))
                              ]))),
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
                                child: Text("Privacy Policy",
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
                                    child: Text("Contact Us",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))
                              ])))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapTiles(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationSettingsScreen);
  }

  void onTapTiles1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDataOneScreen);
  }

  void onTapTiles2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsScreen);
  }
}
