import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_icon_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

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
                    padding:
                        getPadding(left: 24, top: 59, right: 24, bottom: 59),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 10),
                              child: Text("Create an account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNotoSansBold30.copyWith(
                                      letterSpacing: getHorizontalSize(0.06)))),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Full Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansMedium12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: nameController,
                                        hintText: "Enter your name",
                                        margin: getMargin(top: 4),
                                        variant:
                                            TextFormFieldVariant.OutlineGray100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder14,
                                        padding:
                                            TextFormFieldPadding.PaddingT14,
                                        fontStyle: TextFormFieldFontStyle
                                            .NotoSansRegular14,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 15,
                                                right: 8,
                                                bottom: 15),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgUser)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(48)))
                                  ])),
                          Padding(
                              padding: getPadding(top: 13),
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
                                        hintText: "Enter your e-mail here",
                                        margin: getMargin(top: 4),
                                        variant:
                                            TextFormFieldVariant.OutlineGray100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder14,
                                        padding:
                                            TextFormFieldPadding.PaddingT14,
                                        fontStyle: TextFormFieldFontStyle
                                            .NotoSansRegular14,
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
                          Padding(
                              padding: getPadding(top: 13),
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
                                        controller: passwordoneController,
                                        hintText: "Place the password here",
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
                              padding: getPadding(top: 9),
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
                              padding: getPadding(top: 8),
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
                              ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50)),
                          Padding(
                              padding: getPadding(top: 20, right: 8),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 2, bottom: 15),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.blueGray400,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder3),
                                        child: Container(
                                            height: getSize(16),
                                            width: getSize(16),
                                            padding: getPadding(
                                                left: 2,
                                                top: 5,
                                                right: 2,
                                                bottom: 5),
                                            decoration: AppDecoration
                                                .outlineBluegray400
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder3),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(9),
                                                  alignment:
                                                      Alignment.centerRight)
                                            ]))),
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(279),
                                            margin: getMargin(left: 8),
                                            child: Text(
                                                "By continuing you accept our Privacy Policy and Term of Use",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNotoSansMedium12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.14)))))
                                  ])),
                          Container(
                              height: getVerticalSize(58),
                              width: getHorizontalSize(312),
                              margin: getMargin(top: 20),
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
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(312),
                                        text: "Sign Up",
                                        suffixWidget: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright)),
                                        onTap: () {
                                          onTapSignup(context);
                                        },
                                        alignment: Alignment.topCenter)
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(141),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigo50))),
                                    Text("Or",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNotoSansMedium12Bluegray900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.14))),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(140),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.indigo50)))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcongsuite)),
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            margin: getMargin(left: 32),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFacebook1))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 22, bottom: 9),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Already have an account? ",
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))),
                                            TextSpan(
                                                text: "Login",
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .indigoA200,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14)))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  /// Navigates to the loginTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginTwoScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginTwoScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginOneScreen.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
