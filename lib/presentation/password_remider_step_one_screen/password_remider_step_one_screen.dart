import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordRemiderStepOneScreen extends StatelessWidget {
  PasswordRemiderStepOneScreen({Key? key}) : super(key: key);

  TextEditingController emailoneController = TextEditingController();

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
                    padding: getPadding(left: 24, top: 62, right: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Enter your e-mail",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold30.copyWith(
                                  letterSpacing: getHorizontalSize(0.06))),
                          Container(
                              width: getHorizontalSize(310),
                              margin: getMargin(top: 16),
                              child: Text(
                                  "You will receive a link to confirm the password change to the e-mail address provided",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtNotoSansRegular14.copyWith(
                                      letterSpacing: getHorizontalSize(0.17)))),
                          Padding(
                              padding: getPadding(top: 18, bottom: 5),
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
                      text: "Confirm e-mail",
                      suffixWidget: Container(
                          margin: getMargin(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright)),
                      onTap: () {
                        onTapConfirmemail(context);
                      },
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the passwordRemiderStepTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the passwordRemiderStepTwoScreen.
  onTapConfirmemail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordRemiderStepTwoScreen);
  }
}
