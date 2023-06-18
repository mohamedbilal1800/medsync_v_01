import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: SizedBox(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 24, top: 41, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: getHorizontalSize(202),
                                    text: "Notification Settings",
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingT1,
                                    fontStyle: ButtonFontStyle.NotoSansBold16,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 12),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    onTap: () {
                                      onTapNotification(context);
                                    }),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 19),
                                        decoration: AppDecoration.fillGray100,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4,
                                                                bottom: 5),
                                                            child: Text(
                                                                "All Notifications",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNotoSansBold16)),
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            color: ColorConstant
                                                                .gray100,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder16),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        32),
                                                                width:
                                                                    getHorizontalSize(
                                                                        54),
                                                                decoration: AppDecoration
                                                                    .fillGray100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder16),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowdown,
                                                                          height: getVerticalSize(
                                                                              32),
                                                                          width: getHorizontalSize(
                                                                              54),
                                                                          alignment: Alignment
                                                                              .center,
                                                                          onTap:
                                                                              () {
                                                                            onTapImgArrowdown(context);
                                                                          })
                                                                    ])))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo50))
                                            ])))
                              ]))),
                  CustomImageView(
                      svgPath: ImageConstant.imgSpacingBlue900,
                      height: getVerticalSize(196),
                      width: getHorizontalSize(360),
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the notificationSettingsSpacingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the notificationSettingsSpacingScreen.
  onTapImgArrowdown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationSettingsSpacingScreen);
  }
}
