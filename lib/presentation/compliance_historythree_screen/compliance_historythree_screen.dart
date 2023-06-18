import '../compliance_historythree_screen/widgets/listparacetamol_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_button.dart';

class ComplianceHistorythreeScreen extends StatelessWidget {
  const ComplianceHistorythreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 29, right: 24, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(122),
                          text: "Morning",
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.NotoSansBold20,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapMorning(context);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(60));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return ListparacetamolItemWidget();
                                  })))
                    ]))));
  }

  /// Navigates to the complianceHistorytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the complianceHistorytwoScreen.
  onTapMorning(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complianceHistorytwoScreen);
  }
}
