import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordRemiderStepTwoScreen extends StatelessWidget {
  PasswordRemiderStepTwoScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 24, top: 61, right: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: getHorizontalSize(178),
                                  child: Text("Enter a new password",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtNotoSansBold30
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: newpasswordController,
                                        hintText: "Place new password here",
                                        margin: getMargin(top: 4),
                                        variant:
                                            TextFormFieldVariant.OutlineGray100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder14,
                                        padding:
                                            TextFormFieldPadding.PaddingT14_1,
                                        fontStyle: TextFormFieldFontStyle
                                            .NotoSansRegular14,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 15,
                                                right: 8,
                                                bottom: 15),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLock)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(48)),
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 15,
                                                right: 12,
                                                bottom: 15),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconHidepassword)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(48)),
                                        isObscureText: true)
                                  ])),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("At least 8 characters",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ])),
                          Padding(
                              padding: getPadding(top: 10, right: 43),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text(
                                        "Both uppercase and lowercase characters",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ])),
                          Padding(
                              padding: getPadding(top: 8, bottom: 5),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("At least one number or symbol",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))))
                              ]))
                        ]))),
            bottomNavigationBar: Container(
                height: getVerticalSize(60),
                width: getHorizontalSize(312),
                margin: getMargin(left: 24, right: 24, bottom: 36),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgBtnshadowIndigoA100,
                      height: getVerticalSize(20),
                      width: getHorizontalSize(240),
                      radius: BorderRadius.circular(getHorizontalSize(10)),
                      alignment: Alignment.bottomCenter),
                  CustomButton(
                      height: getVerticalSize(56),
                      width: getHorizontalSize(312),
                      text: "Confirm password",
                      suffixWidget: Container(
                          margin: getMargin(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright)),
                      onTap: () {
                        onTapConfirm(context);
                      },
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the passwordRemiderStepThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the passwordRemiderStepThreeScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordRemiderStepThreeScreen);
  }
}
