import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';

// ignore: must_be_immutable
class Listparacetamol1ItemWidget extends StatelessWidget {
  const Listparacetamol1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        decoration: AppDecoration.fillIndigoA100.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.gray100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        54,
                      ),
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder16,
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              54,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.indigo50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
