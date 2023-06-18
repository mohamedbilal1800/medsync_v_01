import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';
import 'package:medsync/widgets/custom_icon_button.dart';

class ProfileOneScreen extends StatelessWidget {
  const ProfileOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        height: getVerticalSize(86),
                                        text: "Profile",
                                        variant: ButtonVariant.FillBlue10002,
                                        shape: ButtonShape.RoundedBorder32,
                                        padding: ButtonPadding.PaddingT20,
                                        fontStyle:
                                            ButtonFontStyle.IBMPlexMonoBold35,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 30),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowBack)),
                                        onTap: () {
                                          onTapProfile(context);
                                        }),
                                    SizedBox(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(right: 2),
                                            padding: getPadding(
                                                left: 9,
                                                top: 10,
                                                right: 9,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.fillBlue10002,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 11, right: 15),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Container(
                                                                          decoration: AppDecoration.fillBluegray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder75),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            Container(
                                                                                decoration: AppDecoration.fillBluegray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder75),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Container(height: getSize(150), width: getSize(150), decoration: BoxDecoration(color: ColorConstant.blueGray100, borderRadius: BorderRadius.circular(getHorizontalSize(75))))
                                                                                ]))
                                                                          ]))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              56),
                                                                      child: Text(
                                                                          "Madison ",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtIBMPlexMonoBold30)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "25",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtIBMPlexMonoMedium17)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              3,
                                                                          top:
                                                                              23),
                                                                      child: Text(
                                                                          "Info",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium13))
                                                                ]),
                                                            CustomIconButton(
                                                                height: 54,
                                                                width: 54,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            29,
                                                                        top:
                                                                            218,
                                                                        bottom:
                                                                            37),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillRed400,
                                                                shape: IconButtonShape
                                                                    .CircleBorder27,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll19,
                                                                onTap: () {
                                                                  onTapBtnEdit(
                                                                      context);
                                                                },
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgEdit))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          334),
                                                      margin: getMargin(
                                                          left: 3,
                                                          top: 76,
                                                          right: 3),
                                                      padding: getPadding(
                                                          left: 8, right: 8),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder10,
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup24),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "Date of Birth",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium12)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 25),
                                                                child: Text(
                                                                    "28-12-97",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium20))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          334),
                                                      margin: getMargin(
                                                          top: 22, right: 6),
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 1,
                                                          right: 11,
                                                          bottom: 1),
                                                      decoration: AppDecoration
                                                          .fillIndigoA200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            3),
                                                                child: Text(
                                                                    "PHONE Number",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "96744 56241",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium20))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          334),
                                                      margin: getMargin(
                                                          top: 23,
                                                          right: 6,
                                                          bottom: 70),
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 1,
                                                          right: 11,
                                                          bottom: 1),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup23),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Full Name",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtIBMPlexMonoMedium12),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            11),
                                                                child: Text(
                                                                    "Madison Johnson",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium20)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 2,
                                                                        top: 58,
                                                                        bottom:
                                                                            31),
                                                                child: Text(
                                                                    "Medical History",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtIBMPlexMonoMedium20))
                                                          ]))
                                                ])))
                                  ])))
                    ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the profileEditFormScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the profileEditFormScreen.
  onTapBtnEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileEditFormScreen);
  }
}
