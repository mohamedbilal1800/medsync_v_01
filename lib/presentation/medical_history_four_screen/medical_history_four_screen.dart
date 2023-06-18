import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicalHistoryFourScreen extends StatelessWidget {
  MedicalHistoryFourScreen({Key? key}) : super(key: key);

  TextEditingController medcounterController = TextEditingController();

  TextEditingController medcounteroneController = TextEditingController();

  TextEditingController medcountertwoController = TextEditingController();

  TextEditingController medcounterController1 = TextEditingController();

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
                      onTapArrowleft3(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome3(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 6, right: 21, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 3),
                          child: Text("Medicine’s",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30Black900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcounterController,
                          hintText: "Med 1",
                          margin: getMargin(left: 3, top: 32, right: 3)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcounteroneController,
                          hintText: "Med 2",
                          margin: getMargin(left: 3, top: 11, right: 3)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcountertwoController,
                          hintText: "Med 3",
                          margin: getMargin(left: 3, top: 11, right: 3)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medcounterController1,
                          hintText: "Med 4",
                          margin: getMargin(left: 6, top: 11),
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 3, bottom: 78),
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
                                        svgPath: ImageConstant.imgEditBlack900,
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
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
