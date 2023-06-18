import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicalHistoryFiveScreen extends StatelessWidget {
  MedicalHistoryFiveScreen({Key? key}) : super(key: key);

  TextEditingController doccountertwoController = TextEditingController();

  TextEditingController doccounterController = TextEditingController();

  TextEditingController doccounterfourController = TextEditingController();

  TextEditingController doccounterfiveController = TextEditingController();

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
                      onTapArrowleft4(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome4(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 7, right: 24, bottom: 7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Document’s",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      Container(
                          height: getVerticalSize(56),
                          width: getHorizontalSize(312),
                          margin: getMargin(top: 32),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 23),
                                    child: Row(children: [
                                      SizedBox(
                                          height: getSize(24),
                                          width: getSize(24),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    alignment: Alignment.center)
                                              ])),
                                      Container(
                                          height: getVerticalSize(22),
                                          width: getHorizontalSize(41),
                                          margin: getMargin(left: 10, top: 2),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("Doc 1",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNotoSansSemiBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.19)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text("Doc 1",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNotoSansSemiBold16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.19))))
                                              ]))
                                    ]))),
                            CustomTextFormField(
                                width: getHorizontalSize(312),
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: doccountertwoController,
                                hintText: "Doc 1",
                                padding: TextFormFieldPadding.PaddingT17,
                                alignment: Alignment.center,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 23,
                                        top: 16,
                                        right: 10,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFile)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)))
                          ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: doccounterController,
                          hintText: "Doc 2",
                          margin: getMargin(top: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          prefix: Container(
                              margin: getMargin(
                                  left: 23, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFile)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: doccounterfourController,
                          hintText: "Doc 3",
                          margin: getMargin(top: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          prefix: Container(
                              margin: getMargin(
                                  left: 23, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFile)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: doccounterfiveController,
                          hintText: "Doc 4",
                          margin: getMargin(top: 12),
                          padding: TextFormFieldPadding.PaddingT17,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 23, top: 16, right: 10, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFile)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(right: 6, bottom: 76),
                              color: ColorConstant.indigoA200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder20),
                              child: Container(
                                  height: getVerticalSize(68),
                                  width: getHorizontalSize(74),
                                  padding: getPadding(
                                      left: 23, top: 20, right: 23, bottom: 20),
                                  decoration: AppDecoration.fillIndigoA200
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle5909,
                                        height: getSize(28),
                                        width: getSize(28),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(14)),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
