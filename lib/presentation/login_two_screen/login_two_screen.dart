import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_icon_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginTwoScreen extends StatelessWidget {
  LoginTwoScreen({Key? key}) : super(key: key);

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
                        getPadding(left: 22, top: 38, right: 22, bottom: 38),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 83, top: 20),
                                  child: Text("Welcome ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtNotoSansBold30
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          Padding(
                              padding: getPadding(left: 2, top: 19, right: 2),
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
                              padding: getPadding(left: 2, top: 21, right: 2),
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
                          GestureDetector(
                              onTap: () {
                                onTapTxtForgotyourpassw(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Forgot your password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtNotoSansMedium12IndigoA200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.14))))),
                          Spacer(),
                          SizedBox(
                              height: getVerticalSize(60),
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
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(312),
                                        text: "Log in",
                                        suffixWidget: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright)),
                                        onTap: () {
                                          onTapLogin(context);
                                        },
                                        alignment: Alignment.topCenter)
                                  ])),
                          Padding(
                              padding: getPadding(top: 17, right: 1),
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
                          Padding(
                              padding: getPadding(top: 19),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIcongsuite)),
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        margin: getMargin(left: 32),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebook1))
                                  ])),
                          Padding(
                              padding: getPadding(top: 22),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account yet? ",
                                        style: TextStyle(
                                            color: ColorConstant.blueGray900,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.14))),
                                    TextSpan(
                                        text: "Sign up",
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.14)))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Navigates to the passwordRemiderStepOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the passwordRemiderStepOneScreen.
  onTapTxtForgotyourpassw(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordRemiderStepOneScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
