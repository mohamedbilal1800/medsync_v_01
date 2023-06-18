import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';

// ignore: must_be_immutable
class ListsunItemWidget extends StatelessWidget {
  const ListsunItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProTextSemibold14,
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 56,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextMedium14Gray700,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 56,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 56,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextMedium14Gray700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
