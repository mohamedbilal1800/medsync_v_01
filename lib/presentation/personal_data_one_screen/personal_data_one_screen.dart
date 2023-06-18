import '../personal_data_one_screen/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_button.dart';

class PersonalDataOneScreen extends StatelessWidget {
  const PersonalDataOneScreen({Key? key}) : super(key: key);

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
                      SizedBox(
                          height: getVerticalSize(288),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomAppBar(
                                height: getVerticalSize(65),
                                leadingWidth: 48,
                                leading: AppbarImage(
                                    height: getSize(24),
                                    width: getSize(24),
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(left: 24),
                                    onTap: () {
                                      onTapArrowleft6(context);
                                    }),
                                title: Padding(
                                    padding: getPadding(left: 12),
                                    child: Text("Personal Data",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNotoSansBold16))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 24,
                                        top: 39,
                                        right: 24,
                                        bottom: 39),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                fs.Svg(ImageConstant.imgGroup2),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 62),
                                              child: ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            16));
                                                  },
                                                  itemCount: 2,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListItemWidget(
                                                        onTapListwithlabels:
                                                            () {
                                                      onTapListwithlabels(
                                                          context);
                                                    });
                                                  }))
                                        ])))
                          ])),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Change Password",
                          margin: getMargin(
                              left: 24, top: 390, right: 24, bottom: 66),
                          variant: ButtonVariant.White,
                          fontStyle:
                              ButtonFontStyle.NotoSansSemiBold16IndigoA200,
                          suffixWidget: Container(
                              margin: getMargin(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgAirplane)),
                          onTap: () {
                            onTapChangepassword(context);
                          })
                    ]))));
  }

  /// Navigates to the personalDataNameScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the personalDataNameScreen.
  onTapListwithlabels(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDataNameScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the changePasswordScreen.
  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }
}
