import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicalHistorySixScreen extends StatelessWidget {
  MedicalHistorySixScreen({Key? key}) : super(key: key);

  TextEditingController imgcounterController = TextEditingController();

  TextEditingController imgcounteroneController = TextEditingController();

  TextEditingController imgcountertwoController = TextEditingController();

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
                      onTapArrowleft5(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome5(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, top: 6, right: 18, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 6),
                          child: Text("Photo’s",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: imgcounterController,
                          hintText: "Img 1",
                          margin: getMargin(top: 32, right: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          prefix: Container(
                              margin: getMargin(
                                  left: 22, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLocation)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: imgcounteroneController,
                          hintText: "Img 2",
                          margin: getMargin(top: 11, right: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          prefix: Container(
                              margin: getMargin(
                                  left: 22, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLocation)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: imgcountertwoController,
                          hintText: "Img 3",
                          margin: getMargin(top: 11, right: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 22, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLocation)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 12, bottom: 77),
                              color: ColorConstant.indigoA200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder20),
                              child: Container(
                                  height: getVerticalSize(68),
                                  width: getHorizontalSize(74),
                                  padding: getPadding(
                                      left: 20, top: 17, right: 20, bottom: 17),
                                  decoration: AppDecoration.fillIndigoA200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getSize(34),
                                        width: getSize(34),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
