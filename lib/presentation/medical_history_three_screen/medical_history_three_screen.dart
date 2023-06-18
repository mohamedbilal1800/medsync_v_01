import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/app_bar/appbar_image.dart';
import 'package:medsync/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MedicalHistoryThreeScreen extends StatelessWidget {
  MedicalHistoryThreeScreen({Key? key}) : super(key: key);

  TextEditingController medicinesController = TextEditingController();

  TextEditingController documentsController = TextEditingController();

  TextEditingController photosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 32, top: 15, right: 32, bottom: 20),
                      onTap: () {
                        onTapHome2(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Complete History",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold30Black900.copyWith(
                              letterSpacing: getHorizontalSize(0.06))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: medicinesController,
                          hintText: "Medicine’s",
                          margin: getMargin(top: 29)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: documentsController,
                          hintText: "Document’s",
                          margin: getMargin(top: 11)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: photosController,
                          hintText: "Photo’s",
                          margin: getMargin(top: 11, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homeScreen.
  onTapHome2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
