import '../compliance_historytwo_screen/widgets/listcut_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class ComplianceHistorytwoScreen extends StatelessWidget {
  const ComplianceHistorytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 33),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: getHorizontalSize(74),
                                    text: "Date",
                                    margin: getMargin(left: 19),
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingT1,
                                    fontStyle: ButtonFontStyle.NotoSansBold16,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 12),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    onTap: () {
                                      onTapDate(context);
                                    }),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 19),
                                        padding: getPadding(
                                            left: 20,
                                            top: 9,
                                            right: 20,
                                            bottom: 9),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(310),
                                                  decoration: AppDecoration
                                                      .txtFillBlack90019,
                                                  child: Text(
                                                      "05 Jan 2023, Wednesday",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtArapeyRegular28))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(top: 116),
                                        padding: getPadding(
                                            left: 22,
                                            top: 73,
                                            right: 22,
                                            bottom: 73),
                                        decoration: AppDecoration
                                            .outlineBlack90029
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL46),
                                        child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(37));
                                            },
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return ListcutItemWidget(
                                                  onTapImgImagesix: () {
                                                onTapImgImagesix(context);
                                              });
                                            })))
                              ]))
                    ]))));
  }

  /// Navigates to the complianceHistorythreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the complianceHistorythreeScreen.
  onTapImgImagesix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complianceHistorythreeScreen);
  }

  /// Navigates to the complianceHistoryoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the complianceHistoryoneScreen.
  onTapDate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complianceHistoryoneScreen);
  }
}
