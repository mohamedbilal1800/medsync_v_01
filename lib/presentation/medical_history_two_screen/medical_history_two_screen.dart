import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicalHistoryTwoScreen extends StatelessWidget {
  MedicalHistoryTwoScreen({Key? key}) : super(key: key);

  TextEditingController medcounterController = TextEditingController();

  TextEditingController medcounteroneController = TextEditingController();

  TextEditingController medcountertwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome1(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 6, right: 24, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Current Medication",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcounterController,
                          hintText: "Med 1",
                          margin: getMargin(top: 32)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcounteroneController,
                          hintText: "Med 2",
                          margin: getMargin(top: 11)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcountertwoController,
                          hintText: "Med 3",
                          margin: getMargin(top: 11, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
