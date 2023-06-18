import '../compliance_historyone_screen/widgets/listsun_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class ComplianceHistoryoneScreen extends StatelessWidget {
  const ComplianceHistoryoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 23, bottom: 23),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(193),
                          text: "Compliance History",
                          margin: getMargin(left: 24, top: 7),
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT1,
                          fontStyle: ButtonFontStyle.NotoSansBold16,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapCompliance(context);
                          }),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 10, top: 20, right: 10, bottom: 20),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(left: 19, right: 19),
                                        padding: getPadding(top: 9, bottom: 9),
                                        decoration: AppDecoration.white,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(57),
                                                  margin: getMargin(left: 30),
                                                  child: Text("Jan 2023",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAliceRegular28)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftDeepOrangeA200,
                                                  height: getSize(36),
                                                  width: getSize(36),
                                                  margin: getMargin(
                                                      top: 14, bottom: 14)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFrame37,
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(46),
                                                  margin: getMargin(
                                                      left: 10,
                                                      top: 14,
                                                      bottom: 14))
                                            ])),
                                    Expanded(
                                        child: SizedBox(
                                            height: getVerticalSize(597),
                                            child: ListView.separated(
                                                padding: getPadding(
                                                    top: 126, bottom: 14),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(16));
                                                },
                                                itemCount: 7,
                                                itemBuilder: (context, index) {
                                                  return ListsunItemWidget();
                                                })))
                                  ])))
                    ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapCompliance(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
