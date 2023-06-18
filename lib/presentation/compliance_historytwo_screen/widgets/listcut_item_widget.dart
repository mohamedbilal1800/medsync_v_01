import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';
import 'package:medsync/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListcutItemWidget extends StatelessWidget {
  ListcutItemWidget({
    Key? key,
    this.onTapImgImagesix,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImagesix;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: ColorConstant.indigoA100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Container(
        height: getVerticalSize(
          63,
        ),
        width: getHorizontalSize(
          312,
        ),
        decoration: AppDecoration.fillIndigoA100.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 16,
                  right: 16,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCut,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        "Med schedule",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNotoSansBold16,
                      ),
                    ),
                    Spacer(),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.blueGray200,
                          width: getHorizontalSize(
                            1,
                          ),
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder16,
                      ),
                      child: Container(
                        height: getSize(
                          32,
                        ),
                        width: getSize(
                          32,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.outlineBluegray200.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder16,
                        ),
                        child: Stack(
                          children: [
                            CustomIconButton(
                              height: 24,
                              width: 24,
                              variant: IconButtonVariant.FillCyan300,
                              padding: IconButtonPadding.PaddingAll7,
                              alignment: Alignment.center,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgIconcheck,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  left: 19,
                  top: 18,
                  right: 19,
                  bottom: 18,
                ),
                decoration: AppDecoration.fillIndigoA100.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage9,
                      height: getVerticalSize(
                        23,
                      ),
                      width: getHorizontalSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        top: 3,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNotoSansBold16,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage6,
                      height: getVerticalSize(
                        23,
                      ),
                      width: getHorizontalSize(
                        24,
                      ),
                      onTap: () {
                        onTapImgImagesix?.call();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
