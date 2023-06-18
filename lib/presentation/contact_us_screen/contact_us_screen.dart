import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_checkbox.dart';

// ignore_for_file: must_be_immutable
class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key}) : super(key: key);

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 41, bottom: 41),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(123),
                          text: "Contact Us",
                          margin: getMargin(left: 24),
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT1,
                          fontStyle: ButtonFontStyle.NotoSansBold16,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapContactus(context);
                          },
                          alignment: Alignment.centerLeft),
                      Container(
                          height: getVerticalSize(19),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.blue9007e)),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("MedSync",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNotoSansBold20.copyWith(
                                  letterSpacing: getHorizontalSize(0.24)))),
                      Container(
                          height: getVerticalSize(12),
                          width: double.maxFinite,
                          margin: getMargin(top: 7),
                          decoration:
                              BoxDecoration(color: ColorConstant.blue9007e)),
                      Padding(
                          padding: getPadding(left: 24, right: 24, bottom: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 21),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCall,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin: getMargin(
                                                            top: 1, bottom: 2)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20),
                                                        child: Text(
                                                            "+91 96722 55134",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNotoSansBold16Bluegray700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.19))))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo50))
                                            ]))),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomCheckbox(
                                                  text: "contact@MedSync.com",
                                                  value: isCheckbox,
                                                  margin: getMargin(
                                                      top: 22, right: 86),
                                                  fontStyle: CheckboxFontStyle
                                                      .NotoSansBold16,
                                                  onChange: (value) {
                                                    isCheckbox = value;
                                                  }),
                                              Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo50))
                                            ]))),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 21, right: 78),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationBlueGray400,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                top: 2,
                                                                bottom: 78)),
                                                        Expanded(
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        195),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            20),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "MedSync Corp.\n",
                                                                              style: TextStyle(color: ColorConstant.blueGray700, fontSize: getFontSize(16), fontFamily: 'Noto Sans', fontWeight: FontWeight.w700, letterSpacing: getHorizontalSize(0.19))),
                                                                          TextSpan(
                                                                              text: "1277 Saige Point Apt. 140\n65479 West Shaun,\nOklahoma",
                                                                              style: TextStyle(color: ColorConstant.blueGray400, fontSize: getFontSize(16), fontFamily: 'Noto Sans', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.19)))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 21),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo50))
                                            ])))
                              ]))
                    ]))));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
  onTapContactus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
