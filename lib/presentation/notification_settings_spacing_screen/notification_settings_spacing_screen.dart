import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationSettingsSpacingScreen extends StatelessWidget {
  NotificationSettingsSpacingScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: SizedBox(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomButton(
                      width: getHorizontalSize(202),
                      text: "Notification Settings",
                      margin: getMargin(left: 24, top: 41),
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingT1,
                      fontStyle: ButtonFontStyle.NotoSansBold16,
                      prefixWidget: Container(
                          margin: getMargin(right: 12),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      onTap: () {
                        onTapNotification(context);
                      },
                      alignment: Alignment.topLeft),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 40, right: 24, bottom: 40),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      fs.Svg(ImageConstant.imgSpacingBlue900),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 44),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
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
                                                        CustomSwitch(
                                                            value:
                                                                isSelectedSwitch,
                                                            onChanged: (value) {
                                                              isSelectedSwitch =
                                                                  value;
                                                            })
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
                              ])))
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
}
