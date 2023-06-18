import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_button.dart';

class MedicalHistoryOneScreen extends StatelessWidget {
  const MedicalHistoryOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Medical History",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Current Medication",
                          margin: getMargin(top: 57),
                          padding: ButtonPadding.PaddingAll17,
                          onTap: () {
                            onTapCurrent(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Complete History ",
                          margin: getMargin(top: 32, bottom: 5),
                          padding: ButtonPadding.PaddingAll17,
                          onTap: () {
                            onTapComplete(context);
                          })
                    ]))));
  }

  /// Navigates to the medicalHistoryTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the medicalHistoryTwoScreen.
  onTapCurrent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.medicalHistoryTwoScreen);
  }

  /// Navigates to the medicalHistoryThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the medicalHistoryThreeScreen.
  onTapComplete(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.medicalHistoryThreeScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
