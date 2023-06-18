import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrangeA200 = fromHex('#fd7b38');

  static Color indigoA200 = fromHex('#585ce5');

  static Color indigoA100 = fromHex('#a1a3f6');

  static Color red400 = fromHex('#f65042');

  static Color blue9007e = fromHex('#7e001ab6');

  static Color gray50 = fromHex('#fafaff');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#3c4959');

  static Color gray70075 = fromHex('#7565676d');

  static Color black90029 = fromHex('#29000000');

  static Color blueGray700 = fromHex('#405270');

  static Color blueGray90001 = fromHex('#202934');

  static Color blueGray900 = fromHex('#0f2851');

  static Color gray700 = fromHex('#65676d');

  static Color blueGray200 = fromHex('#afb2c3');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888c9e');

  static Color indigo50 = fromHex('#e5e6ee');

  static Color gray900 = fromHex('#1d1517');

  static Color gray90001 = fromHex('#1e1e1e');

  static Color gray100 = fromHex('#f0f1f9');

  static Color cyan300 = fromHex('#57c6cd');

  static Color blue100 = fromHex('#d0d1ff');

  static Color blue10001 = fromHex('#cfd0ff');

  static Color indigo900 = fromHex('#282a70');

  static Color blue10002 = fromHex('#d1d2ff');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90033 = fromHex('#33000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
