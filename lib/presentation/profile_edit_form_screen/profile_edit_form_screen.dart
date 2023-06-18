import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileEditFormScreen extends StatelessWidget {
  ProfileEditFormScreen({Key? key}) : super(key: key);

  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController phoneoneController = TextEditingController();

  TextEditingController dateofbirthoneController = TextEditingController();

  TextEditingController ageoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10002,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                CustomButton(
                                    height: getVerticalSize(84),
                                    text: "Edit",
                                    margin: getMargin(left: 8, right: 8),
                                    variant: ButtonVariant.FillBlue10002,
                                    shape: ButtonShape.RoundedBorder32,
                                    padding: ButtonPadding.PaddingT20,
                                    fontStyle: ButtonFontStyle
                                        .IBMPlexMonoBold35Gray90001,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 30),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowBack)),
                                    onTap: () {
                                      onTapEdit(context);
                                    }),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 19),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration.fillBlue10002,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 15, right: 21),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImagecomponentinputimage,
                                                                height: getSize(
                                                                    115),
                                                                width: getSize(
                                                                    115),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            57))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 46,
                                                                        bottom:
                                                                            42),
                                                                child: Text(
                                                                    "Profile image",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoSemiBold20))
                                                          ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 29),
                                                  child: Text("NAME",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray800)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      fullnameController,
                                                  hintText: "First Last",
                                                  margin: getMargin(
                                                      left: 15, top: 6),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .IBMPlexMonoMedium20),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 19),
                                                  child: Text("EMAIL",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray800)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      emailoneController,
                                                  hintText: "name@email.com",
                                                  margin: getMargin(
                                                      left: 15, top: 6),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle: TextFormFieldFontStyle
                                                      .IBMPlexMonoMedium20WhiteA700,
                                                  textInputType: TextInputType
                                                      .emailAddress),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 19),
                                                  child: Text("Job",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray8001)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      languageController,
                                                  hintText: "----------",
                                                  margin: getMargin(
                                                      left: 15, top: 6),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle: TextFormFieldFontStyle
                                                      .IBMPlexMonoMedium20WhiteA700),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 19),
                                                  child: Text("PHONE",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray800)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      phoneoneController,
                                                  hintText: "00000 00000",
                                                  margin: getMargin(
                                                      left: 15, top: 6),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle: TextFormFieldFontStyle
                                                      .IBMPlexMonoMedium20WhiteA700),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 19),
                                                  child: Text("DATE OF BIRTH",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray800)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      dateofbirthoneController,
                                                  hintText: "dd-mm-yy",
                                                  margin: getMargin(
                                                      left: 15, top: 6),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle: TextFormFieldFontStyle
                                                      .IBMPlexMonoMedium20WhiteA700),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, top: 21),
                                                  child: Text("Age",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtIBMPlexMonoMedium12Bluegray8001)),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: ageoneController,
                                                  hintText: "0",
                                                  margin: getMargin(
                                                      left: 15, top: 4),
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder10,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll14,
                                                  fontStyle: TextFormFieldFontStyle
                                                      .IBMPlexMonoMedium20WhiteA700,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomButton(
                                                  height: getVerticalSize(60),
                                                  text: "Save",
                                                  margin: getMargin(
                                                      left: 15,
                                                      top: 42,
                                                      bottom: 61),
                                                  variant:
                                                      ButtonVariant.FillRed400,
                                                  shape: ButtonShape
                                                      .RoundedBorder10,
                                                  padding: ButtonPadding
                                                      .PaddingAll17,
                                                  fontStyle: ButtonFontStyle
                                                      .IBMPlexMonoBold20,
                                                  onTap: () {
                                                    onTapSave(context);
                                                  })
                                            ])))
                              ])))
                        ])))));
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the profileOneScreen.
  onTapEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileOneScreen);
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the profileOneScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileOneScreen);
  }
}
