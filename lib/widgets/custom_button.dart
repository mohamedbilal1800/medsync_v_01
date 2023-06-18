import 'package:flutter/material.dart';
import 'package:medsync/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case ButtonPadding.PaddingT20:
        return getPadding(
          top: 20,
          right: 20,
          bottom: 20,
        );
      case ButtonPadding.PaddingT1:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      default:
        return getPadding(
          left: 17,
          top: 17,
          bottom: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA200:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBlue10002:
        return ColorConstant.blue10002;
      case ButtonVariant.FillRed400:
        return ColorConstant.red400;
      case ButtonVariant.FillDeeporangeA200:
        return ColorConstant.deepOrangeA200;
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.indigoA200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA200:
        return BorderSide(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.White:
        return BorderSide(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillBlue10002:
      case ButtonVariant.FillRed400:
      case ButtonVariant.FillDeeporangeA200:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NotoSansSemiBold12:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.IBMPlexMonoBold35:
        return TextStyle(
          color: ColorConstant.blueGray90001,
          fontSize: getFontSize(
            35,
          ),
          fontFamily: 'IBM Plex Mono',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.IBMPlexMonoBold35Gray90001:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            35,
          ),
          fontFamily: 'IBM Plex Mono',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.IBMPlexMonoBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'IBM Plex Mono',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansBold16:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SFProTextMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansBold20:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansSemiBold16IndigoA200:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder20,
  CircleBorder16,
  RoundedBorder32,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingT17,
  PaddingAll17,
  PaddingAll7,
  PaddingT20,
  PaddingT1,
}

enum ButtonVariant {
  FillIndigoA200,
  OutlineIndigoA200,
  FillBlue10002,
  FillRed400,
  FillDeeporangeA200,
  White,
}

enum ButtonFontStyle {
  NotoSansSemiBold16,
  NotoSansSemiBold12,
  IBMPlexMonoBold35,
  IBMPlexMonoBold35Gray90001,
  IBMPlexMonoBold20,
  NotoSansBold16,
  SFProTextMedium14,
  NotoSansBold20,
  NotoSansSemiBold16IndigoA200,
}
