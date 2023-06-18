import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalDataEMailScreen extends StatelessWidget {
  PersonalDataEMailScreen({Key? key}) : super(key: key);

  TextEditingController emailoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 12, right: 24, bottom: 12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(234),
                              margin: getMargin(left: 38, top: 48, right: 38),
                              child: Text("Edit Your E-mail Address",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtNotoSansBold30.copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("E-mail",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: emailoneController,
                                        hintText: "m.johnson@gmail.com",
                                        margin: getMargin(top: 4),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder14,
                                        padding:
                                            TextFormFieldPadding.PaddingT14,
                                        fontStyle: TextFormFieldFontStyle
                                            .NotoSansRegular14Bluegray900,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 15,
                                                right: 8,
                                                bottom: 15),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmark)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(48)))
                                  ])),
                          Spacer(),
                          SizedBox(
                              height: getVerticalSize(64),
                              width: getHorizontalSize(312),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBtnshadowIndigoA100,
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(240),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        alignment: Alignment.bottomCenter),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: getMargin(bottom: 8),
                                            padding: getPadding(
                                                left: 20,
                                                top: 15,
                                                right: 20,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .fillIndigoA200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 54, top: 3),
                                                      child: Text(
                                                          "Confirm changes",
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
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24),
                                                      width: getSize(24))
                                                ])))
                                  ]))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Cancel",
                margin: getMargin(left: 24, right: 24, bottom: 40),
                variant: ButtonVariant.OutlineIndigoA200,
                fontStyle: ButtonFontStyle.NotoSansSemiBold16IndigoA200,
                suffixWidget: Container(
                    margin: getMargin(left: 30),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgCloseIndigoA200)),
                onTap: () {
                  onTapCancel(context);
                })));
  }

  /// Navigates to the personalDataOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the personalDataOneScreen.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDataOneScreen);
  }
}
