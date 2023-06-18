import '../settings_screen/widgets/settings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
                      width: getHorizontalSize(102),
                      text: "Settings",
                      margin: getMargin(left: 28, top: 46),
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingT1,
                      fontStyle: ButtonFontStyle.NotoSansBold16,
                      prefixWidget: Container(
                          margin: getMargin(right: 12),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      onTap: () {
                        onTapSettings(context);
                      },
                      alignment: Alignment.topLeft),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 24, top: 82, right: 24),
                          decoration: AppDecoration.outlineBlue100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(1));
                                        },
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return SettingsItemWidget(
                                              onTapMenulist: () {
                                            onTapMenulist(context);
                                          });
                                        }))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgSpacing,
                      height: getVerticalSize(97),
                      width: getHorizontalSize(360),
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the personalDataOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the personalDataOneScreen.
  onTapMenulist(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDataOneScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
